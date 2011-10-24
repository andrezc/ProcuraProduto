#include <stdio.h>
#include <stdlib.h>

int main()
{
    char nome[50];
    char mail[30];
    char cmd[40];
    char cmd2[40];
    printf("Seu Nome: ");
    scanf("%s",&nome);
    printf("Seu e-mail: ");
    scanf("%s",&mail);
    sprintf(cmd, "git config --global user.name \"%s\"", nome);
    system(cmd);
    sprintf(cmd, "git config --global user.email %s", mail);
    system(cmd);
    printf("Entre com seu repositorio e seu usuario, exemplo:\n");
    printf("git remote add origin git@github.com:andrezc/FocusBkp.git\n");
    scanf("%s", &nome);
    printf("Seu arquivo .git: ");
    scanf("%s", mail);
    sprintf(cmd, "git remote add origin git@github.com:%s/%s", nome, mail);
    system(cmd);
    system("git add -A");
    system("git commit -am \"message\"");
    system(" git push -u origin master");

    return 0;
}
