import 'dart:io';
import 'dart:math';

void somaDe10(){
  print("Digite os 10 números queira somar: ");
  int soma = 0;
  for(int i = 1; i <= 10;  i++){
    print('num$i: ');
    int? num = int.parse(stdin.readLineSync()!);
    soma += num;
  }
  print("A soma dos 10 valores é $soma");
}

void tabuadaDeN(){
  print("Entre seu número: ");
  int N = int.parse(stdin.readLineSync()!);
  for(int i = 1; i <= 12; i++){
    print("$N x $i = ${N*i}");
  }
}

void somaDosPares(){
  int soma = 0;
  for(int i = 0; i < 1000000; i++){
    //verify if even
    if(i % 2 == 0){
      soma += i;
    }
  }
  print("A soma de todos os números pares no intervalo de 0-1000000 é $soma");
}

void mediaAleatorios(){
  int qtd, soma;
  double media = 0;
  qtd = soma = 0;

  for(qtd = 0; qtd < 1500; qtd++){
    int numAl = Random().nextInt(1500);
    soma += numAl;
  }
  media = soma/1500;
  print("Media artimética: $media");
}

void main(){
  //Exercício 01
  //somaDe10();

  //Exercício 02
  //tabuadaDeN();

  //Ex 03
  //somaDosPares();

  //Ex 03
  mediaAleatorios();
}