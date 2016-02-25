import os
import re
import sys
import string

from LogEntry import *

# Lable Definition
LABEL_INSTALL_TRANS_S = 'poweroff.target: Trying to enqueue job poweroff.target/start/replace-irreversibly'
LABEL_INSTALL_TRANS_E = 'poweroff.target: Enqueued job poweroff.target/start'
LABEL_DO_TRANS_S = LABEL_INSTALL_TRANS_E
LABEL_DO_TRANS_E = 'Sending SIGTERM to remaining processes'
LABEL_FORCE_SHUTDOWN_S = LABEL_DO_TRANS_E
LABE_FORCE_SHUTDOWN_E = ''

# Dbus message need to be ignored.
IGNORE_MESSAGES = ['Sent message type',
                 'Got message type']

class SystemdLog:

    def __init__(self, logFileName):
        if (True != os.path.exists(logFileName)):
            print "File ", logFileName, " does not exist"
            exit
        
        self.mFileName = logFileName
        self.mInstallTAEntries = list()
        self.mDoTAEntries = list()
        self.mForceEntries = list()
        self.mTotalTime = 0

        f = open(logFileName, 'r')      
        
        i = 0
        section = None
        startedFlag = False
        for line in f.readlines():
            
            #Whether this line need to be ignored.
            isIgnore = False
            for ignore in IGNORE_MESSAGES:
                if line.find(ignore) != -1:
                    isIgnore = True
                    break
            if isIgnore == True:
                continue

            if line.find(LABEL_INSTALL_TRANS_S) != -1:
                #Start of installing transaction
                startedFlag = True
                section = self.mInstallTAEntries
            elif line.find(LABEL_DO_TRANS_S) != -1:
                section = self.mDoTAEntries
            elif line.find(LABEL_FORCE_SHUTDOWN_S) != -1:
                section = self.mForceEntries
            
            if section == None or startedFlag == False:
                continue

            entry = LogEntry()
            entry.analyzeLine(line, i)
            section.append(entry)
        
        f.close()

        #Set the total time consumption.
        sTime = string.atof(self.mInstallTAEntries[0].TimeStamp)
        eTime = string.atof(self.mForceEntries[len(self.mForceEntries) - 1].TimeStamp)
        self.mTotalTime = eTime - sTime
    #End of def __init__ 

    #Method for printing the stats
    def printMyself(self):
        print 'File:%s'%(self.mFileName)
        print 'Time:%f'%(self.mTotalTime)
        stats = self.getStatistics()
        for s in stats:
            print s
    #End of def printMyself

    #Method for getting the overview stat
    #Section %s : [end timestamp] - [start timestamp] = delta
    #3 Sections as INSTALL_TRANS, DO_TRANS, FORCE_SHUTDONW
    def getStatistics(self):
        res = list()
        
        s = 'Total Time Consumption: %f seconds'%(self.mTotalTime)
        #Install Transaction
        sTime = string.atof(self.mInstallTAEntries[0].TimeStamp)
        eTime = string.atof(self.mDoTAEntries[0].TimeStamp)
        s = 'Section %s: [%f - %f] = %f'%('INS_TRANS', sTime, eTime, eTime - sTime)
        res.append(s)

        #Do Transaction
        sTime = string.atof(self.mForceEntries[0].TimeStamp)
        s = 'Section %s: [%f - %f] = %f'%('EXE_TRANS', eTime, sTime, sTime - eTime)
        res.append(s)

        #Force Shutdown
        eTime = string.atof(self.mForceEntries[len(self.mForceEntries) - 1].TimeStamp)
        s = 'Section %s: [%f - %f] = %f'%('FORCE_SHUT', sTime, eTime, eTime - sTime)
        res.append(s)
        return res
    #End of def getStatistics


    #Method for diff with antoher systemd shutdown log.
    #we will parse these two logs, and generate a combined result:
    #if self does not contain the line content, add '+' in the head of diff
    #if self contains the line which not involved in another Log, add '-' in head
    #if both contain the line, remove it in diff result.
    def diffWith(self, targetLog):
        inTransDiff = list()
        doTransDiff = list()
        forceDiff = list()

        result = list()

        #Handle Install Transaction Section
        for left in self.mInstallTAEntries:
            found = 0
            for right in targetLog.mInstallTAEntries:
                if left.compareContent(right, 0, -5) == 1:
                    found = 1
                    break
            if found == 1:
                targetLog.mInstallTAEntries.remove(right)
            else:
                left.Label = '-'
                inTransDiff.append(left)

        #Append the left contents in targetLog into result
        for right in targetLog.mInstallTAEntries:
            #right.Content = "+",(right.Content)
            right.Label = '+'
            inTransDiff.append(right)

        ###############################
        #Handle do transaction section
        for left in self.mDoTAEntries:
            found = 0
            for right in targetLog.mDoTAEntries:
                if left.compareContent(right, 0, 0) == 1:
                    found = 1
                    break;
            if found == 0:
                left.Label = '-'
                doTransDiff.append(left)
            else:
                targetLog.mDoTAEntries.remove(right)
        #Append the contents in targetLog into result
        for right in targetLog.mDoTAEntries:
            right.Label = '+'
            doTransDiff.append(right)

        #Handle Force entries
        for left in self.mForceEntries:
            found = 0
            for right in targetLog.mForceEntries:
                if left.compareContent(right, 0, 0) == 1:
                    found = 1
                    break;
            if found == 0:
                left.Label = '-'
                forceDiff.append(left)
            else:
                targetLog.mForceEntries.remove(right)
        #Append the left contents in targetLog into result
        for right in targetLog.mForceEntries:
            right.Label = '+'
            forceDiff.append(right)

        result.append(inTransDiff)
        result.append(doTransDiff)
        result.append(forceDiff)
        
        return result
    #End of def diffWith


    #function is used to print comparation result
    #Stat for self
    #stat for target

    #diff in install transaction section
    #diff in do transaction section
    #diff in force shutdown section
    def printCompareResult(self, result):
        print '========== Install Transaction ==========='
        for i in result[0]:
            s = '%s[%s] %s %s\n'%(i.Label, i.TimeStamp, i.Process, i.Content)
            print s
        
        print '========== Do Transaction ==========='
        for i in result[1]:
            s = '%s[%s] %s %s\n'%(i.Label, i.TimeStamp, i.Process, i.Content)
            print s

        print '========== Force Shutdown ==========='
        for i in result[2]:
            s = '%s[%s] %s %s\n'%(i.Label, i.TimeStamp, i.Process, i.Content)
            print s
    #End of def printCompareResult

    def writeCompareResult(self, result, logA, logB):
        f_A = open(logA, 'a')
        f_B = open(logB, 'a')
    
        i = 0
        for section in result:
            if i == 0:
                label = '\n========== Install Transaction ===========\n'
            elif i == 1:
                label = '\n==========   Do Transaction    ===========\n'
            else:
                label = '\n==========   Force Shutdown    ===========\n'
            f_A.write(label)
            f_B.write(label)
            for entry in section:
                s = '%s[%s] %s %s'%(entry.Label, entry.TimeStamp, entry.Process, entry.Content)
                if entry.Label == '-':
                    f_A.write(s)
                else:
                    f_B.write(s)
            i = i + 1
        f_A.close()
        f_B.close()
    #End of def writeCompareResult


#main function        
if __name__ == '__main__':

    if len(sys.argv) != 3:
        print "SystemdLog logA logB > log.diff"
        exit

    SystemdLogA = SystemdLog(sys.argv[1])
    SystemdLogB = SystemdLog(sys.argv[2])
    fileLogA = '%s.res'%(sys.argv[1])
    fileLogB = '%s.res'%(sys.argv[2])

    print fileLogA, fileLogB
    #Statistics in LogA
    f_A = open(fileLogA, 'w')
    stats = SystemdLogA.getStatistics()
    print 'SystemdLog File %s\n'%(sys.argv[1])
    f_A.write('SystemdLog File %s\n'%(sys.argv[1]))
    for i in stats:
        print '\t%s'%(i)
        f_A.write('\t%s\n'%(i))
    f_A.close()

    #Statistics in LogB
    f_B = open(fileLogB, 'w')
    stats = SystemdLogB.getStatistics()
    print 'SystemdLog File %s'%(sys.argv[2])
    f_B.write('SystemdLog File %s\n'%(sys.argv[2]))
    for i in stats:
        print '\t%s'%(i)
        f_B.write('\t%s\n'%(i))
    f_B.close()

    #Compare two logs.
    result = SystemdLogA.diffWith(SystemdLogB)
    #SystemdLogA.printCompareResult(result)
    SystemdLogA.writeCompareResult(result, fileLogA, fileLogB)
