#!/usr/share/python
import socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("whois.registro.br",43))
s.send("google.com.br")
resposta = s.recv(1024)
print resposta


