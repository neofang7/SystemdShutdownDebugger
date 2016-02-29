#!/usr/bin/python

import re
import os

from LogEntry import *
from SystemdLog import *

PATTERN_INSTALL_JOB = 'Installed new job'
PATTERN_CONFLICT_JOB = 'Fixing conflicting jobs'
PATTERN_DELETE_JOB = ' Deleting job'
PATTERN_FINISH_JOB = 'finished, result=done'

TYPE_INVALID = -1
TYPE_CONFLICT = 0
TYPE_DELETE = 1
TYPE_INSTALL = 2
TYPE_FINISH = 3

class SystemdJob:
    def __init__(self):
        self.JobName = None
        self.Status = None  #'SHUTDOWN', 'BOOTUP'
        self.PID = 0
        self.Dependency = None
        #time stamp
        self.Start = None
        self.End = None

    def myself(self):
        s = '%s/%s [%s] [%8s - %8s] %s'%(self.JobName, self.Status, self.PID, self.Start, self.End, self.Dependency)
        return s

class SystemdJobList:
    def __init__(self):
        self.JobByInstall = list()
        self.JobByDelete = list()
        self.JobByConflict = list()
        
        self.JobInstallSequence = list()
        self.JobFinishSequence = list()

    def searchJobInList(self, jobName, myList):
        found = False
        for job in myList:
            if job.JobName == jobName:
                found = True
                break
        if found == False:
            job = None

        return job
    
    def _typeOfLogEntry(self, logEntry):
        ret = TYPE_INVALID
        if PATTERN_CONFLICT_JOB in logEntry.Content:
            ret = TYPE_CONFLICT
        elif PATTERN_DELETE_JOB in logEntry.Content:
            ret = TYPE_DELETE
        elif PATTERN_INSTALL_JOB in logEntry.Content:
            ret = TYPE_INSTALL
        elif PATTERN_FINISH_JOB in logEntry.Content:
            ret = TYPE_FINISH

        return ret

    def _getJobName(self, content):
        infos = content.split(':')
        name = infos[0]
        return name[1:]

    def _handleConflictLog(self, logEntry):
        # For example: 'ldconfig.service: Fixing conflicting jobs 
        # ldconfig.service/start,ldconfig.service/stop 
        # by deleting job ldconfig.service/stop'
        job = SystemdJob()
        job.JobName = self._getJobName(logEntry.Content)
        
        self.JobByConflict.append(job)
    
    def _handleDeleteLog(self, logEntry):
        jobName = self._getJobName(logEntry.Content)
        job = self.searchJobInList(jobName, self.JobByConflict)
        if job == None:
            job = SystemdJob()
            job.JobName = self._getJobName(logEntry.Content)
        
        tag = '%s: %s %s/start as dependency of job '%(job.JobName, PATTERN_DELETE_JOB, job.JobName)
        info = logEntry.Content[len(tag)+1: len(logEntry.Content)]
        job.Dependency = info[0: len(info) - len('stop')]
        self.JobByDelete.append(job)


    def _handleInstalledLog(self, logEntry):
        jobName = self._getJobName(logEntry.Content)
        job = self.searchJobInList(jobName, self.JobByConflict)
        if job == None:
            job = self.searchJobInList(jobName, self.JobByDelete)
            if job == None:
                job = SystemdJob()
                job.JobName = jobName

        tag = '%s: %s %s/'%(job.JobName, PATTERN_INSTALL_JOB, job.JobName)
        #print 'Debug:%s'%(tag)
        #Fetch pid.
        if tag not in logEntry.Content:
            #print 'Invalid tag:[%s]'%(tag)
            return False

        info = logEntry.Content[len(tag)+1: len(logEntry.Content)]
        infos = info.split(' ')
        job.Status = infos[0]
        job.PID = infos[2][0: -1]
        job.Start = logEntry.TimeStamp
        
        self.JobByInstall.append(job)
        self.JobInstallSequence.append(job)
        return True

    def _handleFinishedLog(self, logEntry):
        jobName = self._getJobName(logEntry.Content)
        job = self.searchJobInList(jobName, self.JobInstallSequence)
        if job == None:
            print 'Fatal error: no startup entry log.'
            return False

        tag = '%s: Job %s'%(jobName, jobName)
        #if tag not in logEntry.Content:
        if logEntry.Content.find(tag) == -1:
        #print 'Invalid tag[%s]'%(tag)
            return False

        if jobName == 'paths.target':
            print 'DEBUG: %s'%(tag)
            print logEntry.TimeStamp.strip()
            print 'DEBUG:%s'%(logEntry.Content)

        job.End = logEntry.TimeStamp.strip()
        self.JobFinishSequence.append(job)

        return True

    #Public method of SystemdJobList.
    def parseShutdownSystemdLog(self, systemdLog):
        #parse each entry in SystemdLog object.
        #2 lists: mInstallTAEntries, mDoTAEntries
        for entry in systemdLog.mInstallTAEntries:
            #Fixing/Delete/Install log?
            entryType = self._typeOfLogEntry(entry)
            if entryType == TYPE_INVALID:
                #Just ignore it.
                continue
            elif entryType == TYPE_CONFLICT:
                self._handleConflictLog(entry)
            elif entryType == TYPE_DELETE:
                self._handleDeleteLog(entry)
            elif entryType == TYPE_INSTALL:
                self._handleInstalledLog(entry)
        for entry in systemdLog.mDoTAEntries:
            entryType = self._typeOfLogEntry(entry)
            if entryType == TYPE_INVALID:
                continue
            elif entryType == TYPE_INSTALL:
                self._handleInstalledLog(entry)
            elif entryType == TYPE_FINISH:
                self._handleFinishedLog(entry)

    def getUnfinishedJobs(self):
        unfinished = list()
        for j in self.JobInstallSequence:
            if j.End == None:
                unfinished.append(j)
        return unfinished

#main function
if __name__ == '__main__':
    if len(sys.argv) != 2:
        print 'JobInfo [logFile]'
        exit

    systemdLog = SystemdLog(sys.argv[1])
    jobList = SystemdJobList()
    jobList.parseShutdownSystemdLog(systemdLog)

    print '%d jobs are installed'%(len(jobList.JobInstallSequence))
    print '%d jobs are finished'%(len(jobList.JobFinishSequence))
    for j in jobList.JobInstallSequence:
        print j.myself()
    
    unfinished = jobList.getUnfinishedJobs()
    if unfinished == None:
        print 'No unfinished jobs.'
    else:
        for j in jobList.getUnfinishedJobs():
            print j.myself()

    #for j in jobList.JobByDelete:
    #    print j.myself()
