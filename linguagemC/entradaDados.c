#include <stdio.h>

int main(void){

	int porta;
	char ip[16];
	printf("Desec Security \n");
	printf("Digite o IP \n");
	//scanf("%s",&ip);   scanf e um metodo de entrada vuneravel devido não respeitar o limite de entrada
	fgets(ip,10,stdin);
        printf("Digite a Porta \n");

	scanf("%i",&porta);
	printf("Varrendo Host: %s na porta %d \n",ip,porta);

	return 0;

}
