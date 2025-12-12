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
  print("A soma dos 10 valores é $soma\n");
}

void tabuadaDeN(){
  print("Entre seu número: ");
  int N = int.parse(stdin.readLineSync()!);
  for(int i = 1; i <= 12; i++){
    print("$N x $i = ${N*i}");
  }
  print(" ");
}

void somaDosPares(){
  int soma = 0;
  for(int i = 0; i < 1000000; i++){
    //verify if even
    if(i % 2 == 0){
      soma += i;
    }
  }
  print("A soma de todos os números pares no intervalo de 0-1000000 é $soma\n");
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
  print("Media artimética: $media\n");
}

void imparesNegativos(){
  //Entrada como lista
  List<int> num = [-47, 83, -92, 15, 61, -38, 94, -71, 29, -6, 55, -89, 42, -13, 78, -64, 31, 97, -25, 8, -52, 66, -81, 19, -34, 73, -9, 48, -76, 22, 91, -41, 5, -68, 36, -85, 57, -12, 74, -49, 11, -63, 88, -27, 44, -96, 17, 59, -72, 33, -4, 69, -88, 24, -51, 82, -18, 37, -95, 53, -7, 76, -39, 14, -62, 89, -21, 46, -84, 28, 3, -56, 71, -93, 40, -11, 65, -78, 23, -45, 86, -32, 50, -69, 9, -87, 58, -16, 35, -74, 67, -2, 43, -99, 20, 54, -65, 30, -81, 72, -26, 13, -58, 85, -44, 6, -91, 49, -15, 77, -36, 21, -70, 92, -8, 38, -83, 56, -19, 75, -42, 10, -67, 80, -29, 47, -94, 25, -53, 84, -14, 41, -77, 60, -5, 34, -86, 68, -23, 51, -98, 16, -61, 87, -33, 45, -79, 27, -50, 73, -10, 39, -82, 63, -20, 52, -89, 18, -46, 81, -35, 7, -73, 95, -28, 44, -90, 59, -17, 36, -75, 64, -3, 48, -96, 22, -57, 83, -31, 12, -66, 88, -24, 41, -84, 55, -13, 71, -37, 26, -69, 90, -9, 43, -88, 62, -19, 49, -93, 30, -54, 78, -25, 14, -70, 86, -32, 47, -81, 58, -11, 35, -76, 91, -6, 40, -85, 67, -22, 51, -97, 18, -63, 79, -28, 45, -87, 60, -16, 33, -72, 89, -4, 38, -83, 56, -21, 74, -29, 10, -65, 92, -34, 50, -80, 23, -58, 85, -15, 42, -77, 64, -8, 37, -94, 68, -26, 53, -90, 20, -48, 82, -31, 12, -66, 87, -23, 44, -79, 59, -14, 36, -73, 95, -7, 41, -86, 62, -18, 49, -91, 27, -55, 78, -24, 15, -69, 88, -32, 46, -84, 57, -12, 34, -75, 93, -5, 39, -82, 65, -20, 52, -98, 17, -61, 80, -27, 43, -85, 60, -16, 35, -74, 89, -9, 38, -83, 66, -22, 51, -96, 19, -64, 81, -29, 13, -68, 86, -33, 47, -79, 58, -11, 36, -72, 92, -6, 40, -87, 63, -19, 54, -99, 21, -56, 78, -25, 14, -70, 85, -31, 45, -82, 59, -15, 33, -76, 90, -4, 37, -84, 67, -23, 50, -94, 18, -62, 79, -28, 12, -65, 88, -34, 48, -81, 55, -10, 35, -73, 91, -7, 42, -86, 64, -20, 53, -97, 16, -59, 80, -26, 43, -83, 60, -17, 32, -75, 89, -8, 39, -85, 66, -22, 49, -93, 20, -63, 82, -30, 13, -68, 87, -33, 46, -78, 57, -12, 34, -74, 92, -5, 40, -84, 65, -21, 52, -98, 19, -61, 79, -27, 14, -69, 86, -32, 47, -81, 58, -16, 35, -73, 90, -9, 38, -83, 63, -19, 51, -96, 22, -64, 80, -28, 11, -66, 88, -34, 45, -82, 56, -13, 33, -75, 91, -6, 37, -85, 67, -23, 50, -94, 17, -62, 78, -29, 12, -70, 85, -31, 48, -79, 59, -15, 36, -72, 89, -4, 41, -84, 64, -20, 54, -97, 18, -60, 81, -26, 43, -86, 61, -18, 32, -76, 90, -7, 39, -83, 66, -22, 49, -92, 21, -63, 82, -30, 14, -68, 87, -33, 46, -80, 55, -11, 35, -74, 93, -5, 40, -85, 65, -21, 53, -98, 16, -59, 79, -27, 13, -69, 88, -34, 47, -81, 58, -12, 34, -73, 91, -8, 38, -84, 62, -19, 51, -96, 20, -64, 80, -28, 10, -66, 86, -32, 45, -82, 57, -14, 33, -75, 89, -6, 37, -83, 67, -23, 50, -94, 18, -61, 78, -29, 11, -70, 85, -31, 48, -79, 60, -15, 36, -72, 90, -4, 41, -86, 63, -20, 54, -97, 19, -58, 81, -26, 44, -84, 59, -17, 32, -76, 88, -7, 39, -82, 66, -22, 49, -93, 21, -65, 77, -30, 14, -68, 87, -33, 46, -80, 56, -12, 35, -74, 92, -5, 40, -85, 64, -21, 52, -98, 17, -60, 79, -27, 13, -69, 86, -34, 47, -81, 55, -11, 34, -73, 91, -8, 38, -83, 62, -19, 51, -96, 20, -63, 80, -28, 12, -66, 88, -32, 45, -78, 57, -14, 33, -75, 89, -6, 37, -84, 67, -23, 50, -94, 16, -61, 82, -29, 10, -70, 85, -31, 48, -79, 60, -15, 36, -72, 90, -4, 41, -86, 65, -20, 54, -97, 18, -59, 81, -26, 43, -87, 58, -17, 32, -76, 87, -7, 39, -83, 66, -22, 49, -92, 21, -64, 78, -30, 13, -68, 86, -33, 46, -80, 55, -12, 35, -74, 91, -5, 40, -85, 63, -21, 52, -98, 19, -60, 79, -27, 14, -69, 88, -34, 47, -81, 56, -11, 34, -73, 90, -8, 38, -84, 62, -19, 51, -96, 20, -65, 80, -28, 11, -66, 87, -32, 45, -82, 57, -14, 33, -75, 89, -6, 37, -83, 67, -23, 50, -94, 17, -61, 78, -29, 12, -70, 85, -31, 48, -79, 59, -15, 36, -72, 91, -4, 41, -86, 64, -20, 54, -97, 16, -58, 81, -26, 44, -84, 60, -17, 32, -76, 88, -7, 39, -82, 66, -22, 49, -93, 21, -63, 77, -30, 14, -68, 86, -33, 46, -80, 55, -12, 35, -74, 92, -5, 40, -85, 65, -21, 53, -98, 18, -59, 79, -27, 13, -69, 87, -34, 47, -81, 56, -11, 34, -73, 90, -8, 38, -83, 62, -19, 51, -96, 20, -64, 80, -28, 10, -66, 88, -32, 45, -78, 57, -14, 33, -75, 89, -6, 37, -84, 67, -23, 50, -94, 19, -61, 82, -29, 11, -70, 85, -31, 48, -79, 60, -15, 36, -72, 91, -4, 41, -86, 63, -20, 54, -97, 17, -60, 81, -26, 43, -87, 58, -17, 32, -76, 87, -7, 39, -83, 66, -22, 49, -92, 21, -65, 78, -30, 13, -68, 86, -33, 46, -80, 56, -12, 35, -74, 90, -5, 40, -85, 64, -21, 52, -98, 16, -59, 79, -27, 14, -69, 88, -34, 47, -81, 55, -11, 34, -73, 91, -8, 38, -84, 62, -19, 51, -96, 20, -63, 80, -28, 12, -66, 87, -32, 45, -82, 57, -14, 33, -75, 89, -6, 37, -83, 67, -23, 50, -94, 18, -61, 78, -29, 10, -70, 85, -31, 48, -79, 59, -15, 36, -72, 90, -4, 41, -86, 65, -20, 54, -97, 19, -58, 81, -26, 44, -84, 60, -17, 32, -76, 88, -7, 39, -82, 66, -22, 49, -93, 21, -64, 77, -30, 14, -68, 86, -33, 46, -80, 55, -12, 35, -74, 92, -5, 40, -85, 63, -21, 53, -98, 17, -60, 79, -27, 13, -69, 87, -34, 47, -81, 56, -11, 34, -73, 90, -8, 38, -83, 62, -19, 51, -96, 20, -65, 80, -28, 11, -66, 88, -32, 45, -78, 57, -14, 33, -75, 89, -6, 37, -84, 67, -23, 50, -94, 16, -61, 82, -29, 12, -70, 85, -31, 48, -79, 60, -15, 36, -72, 91, -4, 41, -86, 64, -20, 54, -97, 18, -59, 81, -26, 43, -87, 58, -17, 32, -76, 87, -7, 39, -83, 66, -22, 49, -92, 21, -63, 78, -30, 13, -68, 86, -33, 46, -80, 55, -12, 35, -74, 90, -5, 40, -85, 65, -21, 52, -98, 19, -60, 79, -27, 14, -69, 88, -34, 47, -81, 56, -11, 34, -73, 91, -8, 38, -84, 62, -19, 51, -96, 20, -64, 80, -28, 10, -66, 87, -32, 45, -82, 57, -14, 33, -75, 89, -6, 37, -83, 67, -23, 50, -94, 17, -61, 78, -29, 11, -70, 85, -31, 48, -79, 59, -15, 36, -72, 90, -4, 41, -86, 63, -20, 54, -97, 16, -58, 81, -26, 44, -84, 60, -17, 32, -76, 88, -7, 39, -82, 66];
  int impNegCount = num.where((n) => n < 0 && n % 2 != 0).length;
  
  //Entrada como um String
  String numString = '-47 83 -92 15 61 -38 94 -71 29 -6 55 -89 42 -13 78 -64 31 97 -25 8 -52 66 -81 19 -34 73 -9 48 -76 22 91 -41 5 -68 36 -85 57 -12 74 -49 11 -63 88 -27 44 -96 17 59 -72 33 -4 69 -88 24 -51 82 -18 37 -95 53 -7 76 -39 14 -62 89 -21 46 -84 28 3 -56 71 -93 40 -11 65 -78 23 -45 86 -32 50 -69 9 -87 58 -16 35 -74 67 -2 43 -99 20 54 -65 30 -81 72 -26 13 -58 85 -44 6 -91 49 -15 77 -36 21 -70 92 -8 38 -83 56 -19 75 -42 10 -67 80 -29 47 -94 25 -53 84 -14 41 -77 60 -5 34 -86 68 -23 51 -98 16 -61 87 -33 45 -79 27 -50 73 -10 39 -82 63 -20 52 -89 18 -46 81 -35 7 -73 95 -28 44 -90 59 -17 36 -75 64 -3 48 -96 22 -57 83 -31 12 -66 88 -24 41 -84 55 -13 71 -37 26 -69 90 -9 43 -88 62 -19 49 -93 30 -54 78 -25 14 -70 86 -32 47 -81 58 -11 35 -76 91 -6 40 -85 67 -22 51 -97 18 -63 79 -28 45 -87 60 -16 33 -72 89 -4 38 -83 56 -21 74 -29 10 -65 92 -34 50 -80 23 -58 85 -15 42 -77 64 -8 37 -94 68 -26 53 -90 20 -48 82 -31 12 -66 87 -23 44 -79 59 -14 36 -73 95 -7 41 -86 62 -18 49 -91 27 -55 78 -24 15 -69 88 -32 46 -84 57 -12 34 -75 93 -5 39 -82 65 -20 52 -98 17 -61 80 -27 43 -85 60 -16 35 -74 89 -9 38 -83 66 -22 51 -96 19 -64 81 -29 13 -68 86 -33 47 -79 58 -11 36 -72 92 -6 40 -87 63 -19 54 -99 21 -56 78 -25 14 -70 85 -31 45 -82 59 -15 33 -76 90 -4 37 -84 67 -23 50 -94 18 -62 79 -28 12 -65 88 -34 48 -81 55 -10 35 -73 91 -7 42 -86 64 -20 53 -97 16 -59 80 -26 43 -83 60 -17 32 -75 89 -8 39 -85 66 -22 49 -93 20 -63 82 -30 13 -68 87 -33 46 -78 57 -12 34 -74 92 -5 40 -84 65 -21 52 -98 19 -61 79 -27 14 -69 86 -32 47 -81 58 -16 35 -73 90 -9 38 -83 63 -19 51 -96 22 -64 80 -28 11 -66 88 -34 45 -82 56 -13 33 -75 91 -6 37 -85 67 -23 50 -94 17 -62 78 -29 12 -70 85 -31 48 -79 59 -15 36 -72 89 -4 41 -84 64 -20 54 -97 18 -60 81 -26 43 -86 61 -18 32 -76 90 -7 39 -83 66 -22 49 -92 21 -63 82 -30 14 -68 87 -33 46 -80 55 -11 35 -74 93 -5 40 -85 65 -21 53 -98 16 -59 79 -27 13 -69 88 -34 47 -81 58 -12 34 -73 91 -8 38 -84 62 -19 51 -96 20 -64 80 -28 10 -66 86 -32 45 -82 57 -14 33 -75 89 -6 37 -83 67 -23 50 -94 18 -61 78 -29 11 -70 85 -31 48 -79 60 -15 36 -72 90 -4 41 -86 63 -20 54 -97 19 -58 81 -26 44 -84 59 -17 32 -76 88 -7 39 -82 66 -22 49 -93 21 -65 77 -30 14 -68 87 -33 46 -80 56 -12 35 -74 92 -5 40 -85 64 -21 52 -98 17 -60 79 -27 13 -69 86 -34 47 -81 55 -11 34 -73 91 -8 38 -83 62 -19 51 -96 20 -63 80 -28 12 -66 88 -32 45 -78 57 -14 33 -75 89 -6 37 -84 67 -23 50 -94 16 -61 82 -29 10 -70 85 -31 48 -79 60 -15 36 -72 90 -4 41 -86 65 -20 54 -97 18 -59 81 -26 43 -87 58 -17 32 -76 87 -7 39 -83 66 -22 49 -92 21 -64 78 -30 13 -68 86 -33 46 -80 55 -12 35 -74 91 -5 40 -85 63 -21 52 -98 19 -60 79 -27 14 -69 88 -34 47 -81 56 -11 34 -73 90 -8 38 -84 62 -19 51 -96 20 -65 80 -28 11 -66 87 -32 45 -82 57 -14 33 -75 89 -6 37 -83 67 -23 50 -94 17 -61 78 -29 12 -70 85 -31 48 -79 59 -15 36 -72 91 -4 41 -86 64 -20 54 -97 16 -58 81 -26 44 -84 60 -17 32 -76 88 -7 39 -82 66 -22 49 -93 21 -63 77 -30 14 -68 86 -33 46 -80 55 -12 35 -74 92 -5 40 -85 65 -21 53 -98 18 -59 79 -27 13 -69 87 -34 47 -81 56 -11 34 -73 90 -8 38 -83 62 -19 51 -96 20 -64 80 -28 10 -66 88 -32 45 -78 57 -14 33 -75 89 -6 37 -84 67 -23 50 -94 19 -61 82 -29 11 -70 85 -31 48 -79 60 -15 36 -72 91 -4 41 -86 63 -20 54 -97 17 -60 81 -26 43 -87 58 -17 32 -76 87 -7 39 -83 66 -22 49 -92 21 -65 78 -30 13 -68 86 -33 46 -80 56 -12 35 -74 90 -5 40 -85 64 -21 52 -98 16 -59 79 -27 14 -69 88 -34 47 -81 55 -11 34 -73 91 -8 38 -84 62 -19 51 -96 20 -63 80 -28 12 -66 87 -32 45 -82 57 -14 33 -75 89 -6 37 -83 67 -23 50 -94 18 -61 78 -29 10 -70 85 -31 48 -79 59 -15 36 -72 90 -4 41 -86 65 -20 54 -97 19 -58 81 -26 44 -84 60 -17 32 -76 88 -7 39 -82 66 -22 49 -93 21 -64 77 -30 14 -68 86 -33 46 -80 55 -12 35 -74 92 -5 40 -85 63 -21 53 -98 17 -60 79 -27 13 -69 87 -34 47 -81 56 -11 34 -73 90 -8 38 -83 62 -19 51 -96 20 -65 80 -28 11 -66 88 -32 45 -78 57 -14 33 -75 89 -6 37 -84 67 -23 50 -94 16 -61 82 -29 12 -70 85 -31 48 -79 60 -15 36 -72 91 -4 41 -86 64 -20 54 -97 18 -59 81 -26 43 -87 58 -17 32 -76 87 -7 39 -83 66 -22 49 -92 21 -63 78 -30 13 -68 86 -33 46 -80 55 -12 35 -74 90 -5 40 -85 65 -21 52 -98 19 -60 79 -27 14 -69 88 -34 47 -81 56 -11 34 -73 91 -8 38 -84 62 -19 51 -96 20 -64 80 -28 10 -66 87 -32 45 -82 57 -14 33 -75 89 -6 37 -83 67 -23 50 -94 17 -61 78 -29 11 -70 85 -31 48 -79 59 -15 36 -72 90 -4 41 -86 63 -20 54 -97 16 -58 81 -26 44 -84 60 -17 32 -76 88 -7 39 -82 66';
  List<int> nums = numString.split(' ').map((s) => int.parse(s)).toList();
  var impNegDeString = nums.where((n) => n < 0 && n % 2 != 0).length;
  
  //Entrada como número aleatório gerado
  int numCount = 1250;
  int impNegRandCount = 0;
  
  for(int i = 0; i < numCount; i++){
    int numRand = Random().nextInt(201) - 100;
    if (numRand < 0 && numRand % 2 != 0){
      impNegRandCount++;
    }
  }

  print('(Entrada como lista) Número de ímpares negativos: $impNegCount');
  print('(Entrada como string) Número de ímpares negativos: $impNegDeString');
  print('(Entrada como numero aleatório gerado) Número de ímpares negativos: $impNegRandCount\n');

}

void paresImpares(){
  int paresCount = 0;
  int imparesCount = 0;

  String valoresString = '-47 83 -92 15 61 -38 94 -71 29 -6 55 -89 42 -13 78 -64 31 97 -25 8 -52 66 -81 19 -34 73 -9 48 -76 22 91 -41 5 -68 36 -85 57 -12 74 -49 11 -63 88 -27 44 -96 17 59 -72 33 -4 69 -88 24 -51 82 -18 37 -95 53 -7 76 -39 14 -62 89 -21 46 -84 28 3 -56 71 -93 40 -11 65 -78 23 -45 86 -32 50 -69 9 -87 58 -16 35 -74 67 -2 43 -99 20 54 -65 30 -81 72 -26 13 -58 85 -44 6 -91 49 -15 77 -36 21 -70 92 -8 38 -83 56 -19 75 -42 10 -67 80 -29 47 -94 25 -53 84 -14 41 -77 60 -5 34 -86 68 -23 51 -98 16 -61 87 -33 45 -79 27 -50 73 -10 39 -82 63 -20 52 -89 18 -46 81 -35 7 -73 95 -28 44 -90 59 -17 36 -75 64 -3 48 -96 22 -57 83 -31 12 -66 88 -24 41 -84 55 -13 71 -37 26 -69 90 -9 43 -88 62 -19 49 -93 30 -54 78 -25 14 -70 86 -32 47 -81 58 -11 35 -76 91 -6 40 -85 67 -22 51 -97 18 -63 79 -28 45 -87 60 -16 33 -72 89 -4 38 -83 56 -21 74 -29 10 -65 92 -34 50 -80 23 -58 85 -15 42 -77 64 -8 37 -94 68 -26 53 -90 20 -48 82 -31 12 -66 87 -23 44 -79 59 -14 36 -73 95 -7 41 -86 62 -18 49 -91 27 -55 78 -24 15 -69 88 -32 46 -84 57 -12 34 -75 93 -5 39 -82 65 -20 52 -98 17 -61 80 -27 43 -85 60 -16 35 -74 89 -9 38 -83 66 -22 51 -96 19 -64 81 -29 13 -68 86 -33 47 -79 58 -11 36 -72 92 -6 40 -87 63 -19 54 -99 21 -56 78 -25 14 -70 85 -31 45 -82 59 -15 33 -76 90 -4 37 -84 67 -23 50 -94 18 -62 79 -28 12 -65 88 -34 48 -81 55 -10 35 -73 91 -7 42 -86 64 -20 53 -97 16 -59 80 -26 43 -83 60 -17 32 -75 89 -8 39 -85 66 -22 49 -93 20 -63 82 -30 13 -68 87 -33 46 -78 57 -12 34 -74 92 -5 40 -84 65 -21 52 -98 19 -61 79 -27 14 -69 86 -32 47 -81 58 -16 55 -13 71 -37 26 -69 90 -9 43 -88 62 -19 49 -93 30 -54 78 -25 14 -70 86 -32 47 -81 58 -11 35 -76 91 -6 40 -85 67 -22 51 -97 18 -63 79 -28 45 -87 60 -16 33 -72 89 -4 38 -83 56 -21 74 -29 10 -65 92 -34 50 -80 23';
  List<int> valores = valoresString.split(' ').map((s) => int.parse(s)).toList();

  for (int i = 0; i < valores.length; i++){
    if(valores[i] % 2 == 0){
      paresCount++;
    }
    else if(valores[i] % 2 !=0){
      imparesCount++;
    }
  }
  print('''
Valores pares: $paresCount
Valores impares: $imparesCount\n''');
}

void qtdDeCarros(){
  String? cor;
  List<String?> cores = [];
  int azulCount = 0;

  for (int i = 0; i < 12; i++){
    print("Entre a cor do carro ${i+1}: ");
    cor = stdin.readLineSync();
    cores.add(cor);
  }

  for(int j = 0; j < 12; j++){
    if(cores[j]?.trim().toLowerCase() == 'azul'){
      azulCount++;
    }
  }

  print('Quantidade de carros azuis: $azulCount\n');
}

void minMaxAleatorio(){
  int min = 0;
  int max = 0;
  int numCount = 5000;

  for (int i = 0; i < numCount; i++){
    int randNum = Random().nextInt(numCount);
    if(i == 0){
      min = randNum;
      max = randNum;
    }
    else{
      if(randNum < min) min = randNum;
      if(randNum > max) max = randNum;
    }    
  }

  print('Numero mínimo: $min');
  print('Numero máximo: $max\n');
}

void mediaDeTurma(){
  int qtdAlunos = 40;
  int soma = 0;

  print("Entre as notas dos 40 alunos: ");
  for(int i = 0; i < qtdAlunos; i++){
    int nota = int.parse(stdin.readLineSync()!);
    soma += nota;
  }
  double media = soma/qtdAlunos;
  print(media);

  if(media.round() > 8){
    print("Esta turma é excelente!!!\n");
  }
  else if(media.round() >= 5 && media < 8){
    print("Esta turma é boa.\n");
  }
  else if (media.round() < 4){
    print("Esta turma já era...\n");
  }
}

void soma10Primeiros(){
  print("Entre um número para N:");
  int N = int.parse(stdin.readLineSync()!);
  int soma = 0;

  for(int i = 1; i <= 10; i++){
    soma += (N + i);
  }
  print("Soma dos 10 primeiros números maiores que $N: $soma\n");
}

void  rendaMediaAnual(){
  double somaRendaMensal, somaRendaAnual, rendaMin, rendaMax;
  somaRendaMensal = somaRendaAnual = 0;
  rendaMin = 18000;
  rendaMax = 130000;
  int habTotal = 120000;
  List<double> rendaHabitantes = [];

  for(int k = 0; k < 12; k++){
    for(int i = 0; i < habTotal; i++){
      double rendaHabitante = Random().nextDouble() * (rendaMax - rendaMin) + rendaMin;
      rendaHabitantes.add(rendaHabitante);
      somaRendaMensal += rendaHabitantes[i];
    }
    somaRendaAnual += somaRendaMensal;
  }

  double rendaMediaAnual = somaRendaAnual/habTotal;
  print("Renda média anual: R\$${rendaMediaAnual.toStringAsFixed(2)}\n");
}

void imparesMultiplosDe3(){
  List<int> numerosImpares = [];
  int numeroImpar = 0;

  for(int i = 17; i < 82753; i++){
    if((i + 1) % 2 != 0 && (i + 1) % 3 == 0){
      numeroImpar = i + 1;
      numerosImpares.add(numeroImpar);
    }
  }

  stdout.write("Números impares e múltiplos de 3 entre 17 e 82753: [");
  for(int j = 0; j < numerosImpares.length - 2; j++){
    stdout.write('${numerosImpares[j]}, ');
  }
  print("${numerosImpares.last}]\n");
}

void alturaJoaozinho(){
  double altNascimento = 37.6;
  double alt18Anos = altNascimento + (18*6.75);
  print("Altura de Joãozinho com 25 anos de idade: ${alt18Anos.toStringAsFixed(2)}cm\n");
}

void inteirosPositivos(){
  List<int> inteiros = [];
  int inteiro, maior, menor, soma;
  double media;
  int qtdints = 500;
  soma = menor = maior = 0;

  print("Para os valores de teste, pode os valores contidos em lib/num.txt");
  for (int i = 0; i < qtdints; i++){
    stdout.write("Entre um inteiro positivo: ");
    inteiro = int.parse(stdin.readLineSync()!);
    inteiros.add(inteiro);
    soma += inteiro;

    if(i == 0){
      menor = inteiros[0];
      maior = inteiros[0];
    }
    if(inteiros[i] < menor) menor = inteiros[i];
    if(inteiros[i] > maior) maior = inteiros[i];
  }
  
  media = soma/qtdints;
  print("""\n
O maior valor dos $qtdints valores lidos é: $maior
O menor valor dos $qtdints valores lidos é: $menor
A soma dos $qtdints valores é: $soma
A média dos $qtdints valores é: ${media.toStringAsFixed(2)}
\n""");
}

void lucroPrejuizoEmpate(){
  double somaPrecosCusto, lucro, prejuizo, somaPrecosVenda, precoCusto, precoVenda;
  somaPrecosCusto = somaPrecosVenda = 0;
  int qtdProdutos = 400;

  for(int i = 0; i < qtdProdutos; i++){
    print("Para os valores de teste, pode os valores contidos em lib/num.txt");
    stdout.write("Entre o preço de custo do produto ${i+1}: ");
    precoCusto = double.parse(stdin.readLineSync()!);
    somaPrecosCusto += precoCusto;

    stdout.write("Entre o preco de venda do produto ${i+1}: ");
    precoVenda = double.parse(stdin.readLineSync()!);
    somaPrecosVenda += precoVenda;

    if(precoVenda > precoCusto){
      lucro = precoVenda - precoCusto;
      print("Houve lucro para produto ${i+1}, sendo-o: R\$ ${lucro.toStringAsFixed(2)}\n");
    }
    else if(precoVenda < precoCusto){
      prejuizo = precoCusto - precoVenda;
      print("Houve prejuízo para produto ${i+1}, sendo-o: R\$ ${prejuizo.toStringAsFixed(2)}\n");
    }
    else{
      print("Houve empate de preço de custo e preço de venda para produto ${i+1}.\n");
    }
  }

  double mediaPrecosCusto = somaPrecosCusto/qtdProdutos;
  double mediaPrecosVenda = somaPrecosVenda/qtdProdutos;
  print("Média de preços de custo para os $qtdProdutos produtos: R\$ ${mediaPrecosCusto.toStringAsFixed(2)}");
  print("Média de preços de venda para os $qtdProdutos produtos: R\$ ${mediaPrecosVenda.toStringAsFixed(2)}\n");
}

void tabuada20DeN(){
  int N, qtdvalores;
  qtdvalores = 20;

  for(int i = 0; i < qtdvalores; i++){
    N = Random().nextInt(20);
    for(int j = 1; j <= 12; j++){
      if(j < 12) stdout.write("$j x $N = ${j * N}\t");
      if(j == 12) stdout.write("$j x $N = ${j * N}\n");
    }
  }
  print("\n");
}

void somaEntre2ValoresQuaisquer(){
  int valor1, valor2;
  int soma = 0;
  stdout.write("Entre um valor: ");
  valor1 = int.parse(stdin.readLineSync()!);
  stdout.write("Entre um outro valor maior que o anterior: ");
  valor2 = int.parse(stdin.readLineSync()!);

  if(valor2 < valor1){
    print("Erro: O segundo valor deve ser maior do que o primeiro. Tente de novo!\n");
    somaEntre2ValoresQuaisquer();
  }
  else{
    for(int i = valor1; i <= valor2; i++){
      soma += i;
    }
    print("A soma de todos os números inteiros entre $valor1 e $valor2 inclusive é: $soma\n");
  }
}

void bonusEspecial(){
  double comprasTotal;
  stdout.write("Entre o valor total das compras do ano passado do cliente: ");
  comprasTotal = double.parse(stdin.readLineSync()!);

  double bonus = (comprasTotal < 500000) ? (comprasTotal * 0.1) : (comprasTotal * 0.25);
  print("Bonus do cliente: $bonus");
}

void multiplosDe11(){
  List<int> multiplosDe11 = [];
  
  for(int i = 0; i <= 7598; i++){
    if(i % 11 == 0){
      multiplosDe11.add(i);
    }
  }
  print("Múltiplos de 11 entre 0 e 7598");
  stdout.write("[");
  for(int j = 0; j < (multiplosDe11.length - 2); j++){
    stdout.write("${multiplosDe11[j]}, ");
  }
  stdout.write("${multiplosDe11.last}]\n");
}

void sexoEPeso(){
  int qtdPessoas = 12;
  int qtdMulheres = 0;
  int qtdHomens = 0;
  double somaPesoMulheres, maiorPesoHomens;
  somaPesoMulheres = maiorPesoHomens = 0;

  List<String> sexos = [];
  List<double> pesos = [];
  List<double> pesosHomem = [];

  for(int i = 0; i < qtdPessoas; i++){
    stdout.write("Entre o sexo da ${i+1}ª pessoa(M para masculino e F para feminino): ");
    String sexo = stdin.readLineSync()!;
    sexos.add(sexo);

    stdout.write("Entre o peso da ${i+1}ª pessoa: ");
    double peso = double.parse(stdin.readLineSync()!);
    print(" ");
    pesos.add(peso);
  }
  
  for(int j = 0; j < qtdPessoas; j++){
    if(sexos[j] == 'F' || sexos[j] == 'f'){
      qtdMulheres++;
      somaPesoMulheres += pesos[j];
    }
    else{
      pesosHomem.add(pesos[j]);
      if(pesos[j] > 100){
        qtdHomens++;
      }
    }
  }
  
  for(int k = 0; k < pesosHomem.length; k++){
    if(k == 0){
      maiorPesoHomens = pesosHomem[k];
    }
    if(pesosHomem[k] > maiorPesoHomens) maiorPesoHomens = pesosHomem[k];
  }

  double mediaPesoMulheres = somaPesoMulheres/qtdMulheres;
  print("Quantidade de mulheres cadastradas: $qtdMulheres");
  print("Quantidade de homens com peso mais de 100Kg: $qtdHomens");
  print("Média de peso entre as mulheres: $mediaPesoMulheres");
  print("Maior peso entre os homens: $maiorPesoHomens\n");
}

void lista2(){
  print("""Escolhe um número para a questão que quer ver a resposta ou 0 para encerrar:
  1. Soma de 10 números.
  2. Tabuada de um número N.
  3. Soma de números pares entre 0 e 1000000.
  4. Média aritmética de 1500 valores randômicos.
  5. Número de impares negativos em 1250 valores.
  6. Contar números pares e impares em 500 valores.
  7. Quantidade de carros azuis em 12 carros.
  8. Imprimir número máximo e mínimo em 5000 valores inteiros aleatórios.
  9. Expressão de professor dependendo na média aritmética da turma.
  10. Soma dos 10 primeiros números maiores que N qualquer.
  11. Renda média anual.
  12. Números impares e múltiplos de 3 entre 17 e 82753.
  13. Altura de Joãozinho.
  14. Imprimir valor maior, menor, soma e média de 500 inteiros positivos.
  15. Lucro, prejuízo ou empate de N produtos.
  16. Tabuada de 20 valores aleatórios de N imprimido em uma linha.
  17. A soma de todos os números inteiros entre dois valores n1 e n2 inclusive.
  18. Bonus especial.
  19. Múltiplos de 11 entre 0 e 7598.
  20. Sexo e peso de 12 pessoas cadastradas.
  Pode ver o código em lib/lista2.dart
  """);

  int? escolha = int.parse(stdin.readLineSync()!);

  switch (escolha){
    case 1:
      print('Exercício 1: Soma de 10 números.');
      somaDe10();
      lista2();
      break;
    case 2:
      print('Exercício 2: Tabuada de um número N.');
      tabuadaDeN();
      lista2();
      break;
    case 3:
      print('Exercício 3: Soma de números pares entre 0 e 1000000.');
      somaDosPares();
      lista2();
      break;
    case 4:
      print('Exercício 4: Média aritmética de 1500 valores randômicos.');
      mediaAleatorios();
      lista2();
      break;
    case 5:
      print('Exercício 5: Número de impares negativos em 1250 valores.');
      imparesNegativos();
      lista2();
      break;
    case 6:
      print('Exercício 6: Contar números pares e impares em 500 valores');
      paresImpares();
      lista2();
      break;
    case 7:
      print('Exercício 7: Quantidade de carros azuis em 12 carros.');
      qtdDeCarros();
      lista2();
      break;
    case 8:
      print('Exercício 8: Imprimir número máximo e mínimo em 5000 valores inteiros aleatórios.');
      minMaxAleatorio();
      lista2();
      break;
    case 9:
      print('Exercício 9: Expressão de professor dependendo na média aritmética da turma.');
      mediaDeTurma();
      lista2();
      break;
    case 10:
      print('Exercício 10: Soma dos 10 primeiros números maiores que N qualquer.');
      soma10Primeiros();
      lista2();
      break;
    case 11:
      print('Exercício 11: Renda média anual.');
      rendaMediaAnual();
      lista2();
      break;
    case 12:
      print('Exercício 12: Números impares e múltiplos de 3 entre 17 e 82753.');
      imparesMultiplosDe3();
      lista2();
      break;
    case 13:
      print('Exercício 13: Altura de Joãozinho.');
      alturaJoaozinho();
      lista2();
      break;
    case 14:
      print('Exercício 14: Imprimir valor maior, menor, soma e média de 500 inteiros positivos');
      inteirosPositivos();
      lista2();
      break;
    case 15:
      print('Exercício 15: Lucro, prejuízo ou empate de N produtos.');
      lucroPrejuizoEmpate();
      lista2();
      break;
    case 16:
      print('Exercício 16: Tabuada de 20 valores aleatórios de N imprimido em uma linha.');
      tabuada20DeN();
      lista2();
      break;
    case 17:
      print('Exercício 17: A soma de todos os números inteiros entre dois valores n1 e n2 inclusive.');
      somaEntre2ValoresQuaisquer();
      lista2();
      break;
    case 18:
      print('Exercício 18: Bonus especial.');
      bonusEspecial();
      lista2();
      break;
    case 19:
      print('Exercício 19: Múltiplos de 11 entre 0 e 7598.');
      multiplosDe11();
      lista2();
      break;
    case 20:
      print('Exercício 20: Sexo e peso de 12 pessoas cadastradas.');
      sexoEPeso();
      lista2();
      break;
    case 0:
      break;
  }
}