#!/usr/bin/python
import sys,socket

if len(sys.argv) <= 1:
	print ("Modo de uso: python ./script 192.168.1.254 80");

else:
	
	for porta in range(1,65535):
		ip = sys.argv[1]

		meusocket = socket.socket(socket.AF_INET,socket.SOCK_STREAM);
		resp = meusocket.connect_ex((ip,int(porta)))

		if (resp == 0):
			print ("Porta ",porta," esta aberta !!! O.o");
			meusocket.close()
		else:
			print ("Porta ",porta," esta fechada");


