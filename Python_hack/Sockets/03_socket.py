#!/usr/bin/python
import sys,socket

if len(sys.argv) <= 2:
	print "Modo de uso: python ./script 192.168.1.254 80"

else:
		ip = sys.argv[1];
		porta = sys.argv[2];
		meusocket = socket.socket(socket.AF_INET,socket.SOCK_STREAM);
		meusocket.connect((ip,int(porta)));
		banner = meusocket.recv(1024);
		print "BANNER E",banner

		print("Enviando usuario")
		meusocket.send("USER ronaldo\n\r")
		banner = meusocket.recv(1024)
		print banner

		print("Enviando senha")
		meusocket.send("PASS ronaldo\n\r")
		banner = meusocket.recv(1024)	
		print banner
