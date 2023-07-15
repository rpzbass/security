
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]){

      int host;

      if(argc<2){

		printf("Modo de uso: ./program 192.168.1.2 443"); 

      } else {

	for(host=0;host<=254;host++){

		printf("Varrendo Host %s.%d \n",argv[1],host);
		system("ping -c 1 %s.%d");	 
  		
	}
      }

}
