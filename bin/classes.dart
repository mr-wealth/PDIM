class Livros{
  String? nome;
  String? autor;
  double? preco;

  void display(){
    print("O nome do livro é $nome");
    print("Foi escrito por $autor");
    print("Ele custa R\$$preco.");
  }
}

class Bicycle{
  String? color;
  int? size;
  int? currentSpeed;

  void changeGear(int newValue){
    currentSpeed = newValue;
  }

  void display(){
    print("Color: $color");
    print("Size: $size");
    print("Current Speed: $currentSpeed");
  }
}

class Camera{
  String? name;
  String? color;
  String? megapixel;

  void display(){
    print("Nome: $name");
    print("Cor: $color");
    print("Megapixel: $megapixel");
  }
}

class Casa{
  String? endereco;
  int? numeroDeQuartos;

  String? display(){
    print("Endereco: $endereco");
    print("Número de quartos: $numeroDeQuartos");
  }
}

void main(){
  Bicycle bicycle = Bicycle();
  bicycle.color = "Black";
  bicycle.size = 32;
  bicycle.currentSpeed = 30;
  bicycle.changeGear(5);
  bicycle.display();

  print("\n");
  Camera camera1 = Camera();
  Camera camera2 = Camera();

  camera1.name = "Sony XOX";
  camera1.color = "Prata";
  camera1.megapixel = "400MP";
  
  camera2.name = "Canon EOS Rebel T7";
  camera2.color = "Preta";
  camera2.megapixel = "800MP";

  print("Camera1: ");
  camera1.display();
  print("\n");
  print("Camera2: ");
  camera2.display();

  Casa casa = Casa();
  casa.endereco = "Rua Doutor Barros Júnior, 743, Centro, Salto-SP, 13320-220";
  casa.numeroDeQuartos = 3;

  print("\n");
  print("Casa: ${casa.display()}");
  casa.display();
  print("Added develop branch");

}