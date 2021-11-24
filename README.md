## Teste Cromai  ✅
--- 

O teste consiste em criar uma aplicação constituída de duas partes. Cada uma dessas mini aplicações foi criada usando uma linguagem diferente: python e shell script. Para entender melhor a natureza do problema, foi criado um diagrama, o qual é apresentado abaixo.

![diagrama](./diagram/cromai.png)

### Descrição das aplicações

#### Aplicação em Python

A aplicação consiste em:


1) abrir um arquivo com o nome `pid`. O arquivo deve ser criado caso ele não exista;
2) pegar o pid do programa que está em execução e gravar no arquivo `pid`;
3) rodar um loop com três iterações, e a cada iteração deve mostrar a mensagem `2: I am alive`;
4) por fim deve mostrar a mensagem `2: I gonna die now, bye`.

O código dessa aplicação está no arquivo [app/app.py](./app/app.py).

#### Aplicação em Shell Script

A aplicação consiste em:

1) rodar em um loop infinito;
2) a cada iteração dele ler um arquivo chamado `pid`
3) verificar se existe um programa em python com esse `pid`;
4) se essa condição for verificada, então o deve mostrar `1: It is alive`;
5) e, se não, deve mostrar a mensagem `1: It is dead` e rodar o programa em python.

O código dessa aplicação está no arquivo [app/app.sh](./app/app.sh).
