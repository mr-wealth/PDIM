import 'dart:io';

void somaDe10(){
  print("Digite os 10 números queira somar: ");
  int soma = 0;
  for(int i = 1; i <= 10;  i++){
    print('num$i: ');
    int? num = int.parse(stdin.readLineSync()!);
    soma = soma + num;
  }
  print("A soma dos 10 valores são $soma");
}

void tabuadaDeN(){
  print("Entre seu número: ");
  int N = int.parse(stdin.readLineSync()!);
  for(int i = 1; i <= 12; i++){
    print("$N x $i = ${N*i}");
  }
}

void main(){
  //Exercício 01
  //somaDe10();

  //Exercício 02
  tabuadaDeN();

}