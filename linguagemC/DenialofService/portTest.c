
#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>

int main(int argc, char *argv[]){

	int meusocket;
	int conecta;

	int inicio=0;
	int final = 65535;
	char * destino;
	char * porta;
	destino = argv[1];
	porta = argv[2];


	struct sockaddr_in alvo;


	meusocket = socket(AF_INET,SOCK_STREAM,0);
	alvo.sin_family = AF_INET;
	alvo.sin_port = htons(atoi(porta));
	alvo.sin_addr.s_addr = inet_addr(destino);

	conecta = connect(meusocket, (struct sockadd * )&alvo, sizeof alvo);

	if(conecta == 0){

		printf("Porta %s - status [Aberta] \n",porta);
		close(meusocket);
		close(conecta);
	}



}
