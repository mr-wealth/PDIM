import 'dart:io';
import 'package:dart_classworks/lista1.dart' as lista1;
import 'package:dart_classworks/lista2.dart' as lista2;

void inicio(){
  print('''Olá professor Túlio. Bem vindo ao interface das minhas listas e atividades. 
  Favor escolhe um número para a atividade que quer avaliar: 
  
  1. Lista 1
  2. Lista 2
  3. Lista 3
  4. Lista 4
  5. Atividade - Cenário: Gerenciador de Tarefas Diárias
  6. Atividade - Manipulaçã de ArquivosTarefa
  7. Atividade - Programação Orientado a Objeto
  8. Atividade - Construtores
  9. Atividade -  Getters e Setters em Dart''');

  int? escolha = int.parse(stdin.readLineSync()!);
  switch (escolha){
    case 1:
      lista1.lista1();
      break;
    case 2:
      lista2.lista2();
  }
}