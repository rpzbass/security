#!/usr/share/python
import socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("whois.registro.br",43))
#python3
#s.send("businesscorp.com.br".encode())
#python2
s.send("businesscorp.com.br"+"\r\n")
data = s.recv(1024)
#python3
#print(data)

#print python2
print data





