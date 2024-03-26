import 'package:dart_introduction/06_clases.dart';

void main(List<String> arguments) {
  Hero wolverine = Hero(name: "wolv", power: "Claw");
  print(wolverine);

  Hero ironman = Hero.fromJson(<String,dynamic>{"name" : "a","power":"money"});
  print(ironman);
}
