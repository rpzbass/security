#!/usr/bin/python

import sys

if len(sys.argv) <=2:
	print ("Modo de uso: script.py 192.168.10.1 80")
else:
	print ("Varrendo host: ",sys.argv[1],"porta: ",sys.argv[2]);

