import os
import string

from LogEntry import *
from SystemdLog import *


def doLogObjectComparation(SLogA, SLogB):
    pathsA = SLogA.mFileName.split('/')
    pathsB = SLogB.mFileName.split('/')
    genFolder = '%s/gen'%(pathsA[0])
    #Check gen folder exists?
    if os.path.exists(genFolder) == False:
        os.mkdir(genFolder)

    if os.path.isdir(genFolder) == False:
        print 'Invalid gen folder. Please remove the gen file.'
        return

    fileLogA = '%s/%s.res'%(genFolder, pathsA[1])
    fileLogB = '%s/%s.res'%(genFolder, pathsB[1])

    #Statistics in LogA
    print 'File log a: %s'%(fileLogA)
    f_A = open(fileLogA, 'w')
    stats = SLogA.getStatistics()
    f_A.write('SystemdLog File %s\n'%(SLogA.mFileName))
    for s in stats:
        f_A.write('\t%s\n'%(s))
    f_A.close()

    #Statistics in LogB
    print 'File log b: %s'%(fileLogB)
    f_B = open(fileLogB, 'w')
    stats = SLogB.getStatistics()
    f_B.write('SystemdLog File %s\n'%(SLogB.mFileName))
    for i in stats:
        f_B.write('\t%s\n'%(i))
    f_B.close()

    #Compare two logs.
    result = SLogA.diffWith(SLogB)
    #SystemdLogA.printCompareResult(result)
    SLogA.writeCompareResult(result, fileLogA, fileLogB)
#End of def doLogObjectComparation

def fetchLogObjsInFolder(folderPath):
    if os.path.exists(folderPath) == False:
        print 'No log files.'
        return None
    logs = os.listdir(folderPath)
    
    objs = list()
    for l in logs:
        l = '%s/%s'%(folderPath, l)
        if os.path.isdir(l) == True:
            continue
        o = SystemdLog(l)
        objs.append(o)

    return objs
#End of def fetchLogObjsInFolder

#Parse all of the logs in folder and compare the two log files which
#consumes the min and max time consumption
def analyzeLogObjects(objs):
    minTime = 9999
    minObj = None
    maxTime = 0
    maxObj = None
    for obj in objs:
        if obj.mTotalTime < minTime:
            minTime = obj.mTotalTime
            minObj = obj
        if obj.mTotalTime > maxTime:
            maxTime = obj.mTotalTime
            maxObj = obj

    doLogObjectComparation(minObj, maxObj)
#End of def analyzeLogObjects

def printObjectInfos(objs):
    for obj in objs:
        obj.printMyself()
#End of def printObjectInfos


#main function
if __name__ == '__main__':
    if len(sys.argv) != 2:
        print 'Usage: python SystemdLog-marshal.py <folder_name>'
        exit

    folder = sys.argv[1]
    objs = fetchLogObjsInFolder(folder)
    if len(objs) < 2:
        print 'In folder %s, we must have at least 2 systemd shutdown logs.'
        exit

    printObjectInfos(objs)
    analyzeLogObjects(objs)
