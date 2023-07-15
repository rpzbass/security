#!/usr/bin/python
#Meu segundo script

print ("Test Security");
ip = input("Digite o IP: "); #string
porta = int(input("Digite a porta: "));
ver = 1.1

print ("Scan versao: ", ver);
print ("Varrendo Host: ",ip,"na porta", porta);

print ("IP - ",type(ip))
print ("Porta - ",type(porta))
print ("Ver - ",type(ver))

print ("Varrendo Host: %s na porta: %d" %(ip,porta));


