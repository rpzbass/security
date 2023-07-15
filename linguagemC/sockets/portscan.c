
#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>

int main(int argc, char *argv[]){

	int meusocket;
	int conecta;
	int porta;
	int inicio =0;
        int final = 65535;
        char *destino;
        destino = argv[1];

	struct sockaddr_in alvo; 

      

       meusocket = socket(AF_INET,SOCK_STREAM,0);

	alvo.sin_family = AF_INET;       
        alvo.sin_port = htons(80);
	alvo.sin_addr.s_addr = inet_addr("192.168.1.254");
	
	conecta = connect(meusocket, (struct sockaddr * )&alvo, sizeof alvo);

        if(conecta == 0){

		printf("Porta aberta\n");
		close(meusocket);
		close(conecta);
	
	}else{

		printf("Porta fechada\n");
	
        }

}
