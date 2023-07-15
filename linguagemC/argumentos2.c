#include <stdio.h>

int main(int argc, char *argv[]){

	if(argc<2){

		printf("Modo de uso: ./program 192.168.0.1 443");

	} else {

		printf("Varrendo Host  %s na Porta %s \n", argv[1],argv[2]);

	}

}
