#!/usr/bin/python
import sys,os

print ("Varrendo o host", sys.argv[1], "na porta",sys.argv[2]);

os.system("netstat -tupano");

