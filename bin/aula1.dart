import 'dart:io';

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

  //Exercício 3 - Volume do cilindro
  print("Entra o valor do raio, r: ");
  double r = double.parse(stdin.readLineSync()!);
  print("Entra o valor da altura, h: ");
  double alturaH = double.parse(stdin.readLineSync()!);
  print("O volume desse cilindro é ${((math.pow(r,2)*alturaH)*(22/7))}");

  //Exercício 4 - Volume do cone
  print("Entra o valor do raio, r: ");
  double rCone = double.parse(stdin.readLineSync()!);
  print("Entra o valor da altura, h: ");
  double alturaCone = double.parse(stdin.readLineSync()!);
  print("O volume desse cilindro é ${((math.pow(rCone,2)*alturaCone)*(22/7))/3}");

  //Exercício 5 - Conversão de dólar para real
  print("Informar o valor da cotação do dólar atual (dólar para reais): ");
  double cotacaoDolar = double.parse(stdin.readLineSync()!);
  print("Informar o valor em dólares quer converter: ");
  double valorDolar = double.parse(stdin.readLineSync()!);
  double dolarToReal = valorDolar*cotacaoDolar;
  print("O valor em R\$ de ${valorDolar}USD é ${dolarToReal}R\$");

  //Exercício 6 - Soma dos quadrados dos números
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

  //Exercício 7 - Conversor de temperatura
  print("Informar a temperatura em graus Celsius(°C)");
  double tempC = double.parse(stdin.readLineSync()!);
  double tempF = ((9*tempC)/5)+32;
  print("${tempC}°C em graus Fahrenheit é ${tempF}°F");

  //Exercício 8 - Salário líquido
  print("Vamos calcular sue salário líquido. Segue os prompts a seguir.");
  print("Informe sue nome completo: ");
  String? nome = stdin.readLineSync();
  print("Informe seu salário bruto(sem impostos): ");
  double salB = double.parse(stdin.readLineSync()!);
  double desconto = 0.275 * salB;
  double salL = salB - desconto;
  print("Pronto senhor(a) ${nome}. Seu salário líquido é R\$${salL}.");

  //Exercício 9 - Comissao de vendedoras de roupas
  print("Bem vindo prezado vendedora! Informe as informações a seguir:");
  print("Informe seu nome: ");
  String? nome = stdin.readLineSync();
  print("Informe o preço para uma calça: ");
  double calcaPreco = double.parse(stdin.readLineSync()!);
  print("Quantas calças você vendeu? ");
  double qtdCalca = double.parse(stdin.readLineSync()!);
  print("Informe o preço para uma blusa: ");
  double blusaPreco = double.parse(stdin.readLineSync()!);
  print("Quantas blusas você vendeu? ");
  double qtdBlusa = double.parse(stdin.readLineSync()!);
  print("Informe o preço para uma saia: ");
  double saiaPreco = double.parse(stdin.readLineSync()!);
  print("Quantas saias você vendeu? ");
  double qtdSaia = double.parse(stdin.readLineSync()!);
  double precoTotal = (qtdCalca * calcaPreco) + (qtdBlusa * blusaPreco) + (qtdSaia * saiaPreco);
  double comissao = precoTotal * 0.12;
  print("Nome do(a) vendedor(a): ${nome}");
  print("Commissão de venda: R\$${comissao}");*/

  //Exercício 10 - Custo da pintura de uma sala
  print("Bem vindo à calculadora do custo da pintura de uma sala. Informe as informções a seguir!");
  print("Medidas da sala:");
  print("Largura das paredes(l): ");
  double largP = double.parse(stdin.readLineSync()!);
  print("Comprimento das paredes(c): ");
  double compP = double.parse(stdin.readLineSync()!);
  print("Altura das paredes(h): ");
  double altP = double.parse(stdin.readLineSync()!);

  print("Informe a quantidade de demão utilizada: ");
  int? qtdDemao = int.parse(stdin.readLineSync()!);

  print("Informe o rendimento de uma lata de tinta por metro quadrado: ");
  num rendLata = num.parse(stdin.readLineSync()!);

  print("Informe o preço de uma lata de tinta: ");
  double precoLata = double.parse(stdin.readLineSync()!);

  print("Informe o custo de mão de obra do pintor: ");
  double custoMDO = double.parse(stdin.readLineSync()!);

  double areaTotal = (2*compP*altP) + (2*largP*altP) + (compP*largP);
  double qtdLatas = (areaTotal/rendLata)*qtdDemao;
  double custoTintas = qtdLatas * precoLata;
  double custoTotal = custoTintas + custoMDO;

  print("Pronto! Segue as informações necessárias para sua obra:");
  print("Quantidade necessária de latas de tintas: $qtdLatas");
  print("Custo de somente as tintas: R\$$custoTintas");
  print("Custo total de tintas e mão de obra: R\$$custoTotal");
}
