#!/usr/bin/python

import re
import os
import sys

class LogEntry:
    def __init(self):
        self.LineNo = 0
        self.TimeStamp = 0
        self.Process = ""
        self.Content = ""
        self.Label = ""

    def analyzeLine(self, line, lineNo):
        #split the contents and time stamp:
       # mat = re.match(r'[0-9]+\.[0-9]*\] ', line)
       result = re.search('\[*.*\] ', line)
       if result:
           timeString = result.group(0)
           self.LineNo = lineNo
           self.TimeStamp = timeString[1 : len(timeString) - 2]
           leftString = line[len(result.group(0)): len(line)]
           #proc = re.search('*\[*\]\:', leftString)
           procEndIndex = leftString.find(']:') + 1
           self.Process = leftString[0 : procEndIndex]
           self.Content = leftString[procEndIndex + 1 :]
       else:
           print "Invalid Line:", line

    #rightIndex < 0. it counts as len(content)+rightIndex
    #leftIndex >= 0.
    def compareContent(self, target, leftCount, rightCount):
        ret = 0
        leftIndex = leftCount
        rightIndex = len(target.Content) + rightCount
        if self.Content[leftIndex:rightIndex] == target.Content[leftIndex:rightIndex]:
            ret = 1
        return ret

    def printMyself(self):
        print '[%d] [%s] [%s] [%s]'%(self.LineNo, self.Process, self.TimeStamp, self.Content)

class StatEntry:
    def __init(self, name):
        self.SectionName = name
        self.StartEntry = None
        self.EndEntry = None
    

#Test Function
if __name__ == '__main__':
    line = sys.argv[1]
    print line
    entry = LogEntry()
    entry.analyzeLine(line, 1)
    entry.printMyself()
