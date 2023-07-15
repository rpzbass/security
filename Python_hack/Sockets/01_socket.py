#!/usr/bin/python

import socket

ip = "192.168.1.254"
porta = 81

meusocket = socket.socket(socket.AF_INET,socket.SOCK_STREAM);
res = meusocket.connect_ex((ip,porta))

if (res == 0):
	print ("Porta aberta");
else:
	print ("Porta esta fechada");



