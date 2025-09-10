import 'dart:io';
import 'dart:math' as math;

void main(List<String> arguments) {
  /*//Exercício 1 - Área do retângulo
  print("Entra o valor do lado a: ");
  int? a = int.parse(stdin.readLineSync()!);
  print("Entra o valor do lado b: ");
  int? b = int.parse(stdin.readLineSync()!);
  print("A área do retângulo é ${a*b} unidades");
  
  //Exercício 2 - Área do trapézio
  print("Vamos calcular a área de um trapézio. Apresente os valores solicitados.");
  print("Entra o valor da base a: ");
  double base_a = double.parse(stdin.readLineSync()!);
  print("Entra o valor da base b: ");
  double base_b = double.parse(stdin.readLineSync()!);
  print("Entra a altura, h: ");
  double h = double.parse(stdin.readLineSync()!);
  print("A área do trapézio é ${((base_a + base_b)*h)/2}");

  //Volume do cilindro
  print("Entra o valor do raio, r: ");
  double r = double.parse(stdin.readLineSync()!);
  print("Entra o valor da altura, h: ");
  double alturaH = double.parse(stdin.readLineSync()!);
  print("O volume desse cilindro é ${((math.pow(r,2)*alturaH)*(22/7))}");

  //Volume do cone
  print("Entra o valor do raio, r: ");
  double rCone = double.parse(stdin.readLineSync()!);
  print("Entra o valor da altura, h: ");
  double alturaCone = double.parse(stdin.readLineSync()!);
  print("O volume desse cilindro é ${((math.pow(rCone,2)*alturaCone)*(22/7))/3}");

  //Conversão de dólar para real
  print("Informar o valor da cotação do dólar atual (dólar para reais): ");
  double cotacaoDolar = double.parse(stdin.readLineSync()!);
  print("Informar o valor em dólares quer converter: ");
  double valorDolar = double.parse(stdin.readLineSync()!);
  double dolarToReal = valorDolar*cotacaoDolar;
  print("O valor em R\$ de ${valorDolar}USD é ${dolarToReal}R\$");*/

  //Soma dos quadrados dos números
  print("Entra o valor do primeiro número: ");
  num num1 = int.parse(stdin.readLineSync()!);
  print("Entra o valor do segundo número: ");
  num  num2 = int.parse(stdin.readLineSync()!);
  print("Entra o valor do terceiro número: ");
  num  num3 = int.parse(stdin.readLineSync()!);
  print("Entra o valor do quarto número: ");
  num num4 = int.parse(stdin.readLineSync()!);
  num num1Quad = math.pow(num1,2);
  num num2Quad = math.pow(num2,2);
  num num3Quad = math.pow(num3,2);
  num num4Quad = math.pow(num4,2);
  num soma = num1Quad + num2Quad + num3Quad + num4Quad;
  print("A soma dos quadrados dos valores é ${soma}");
}
