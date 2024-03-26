import 'package:dart_introduction/07_getters_setters.dart';

void main(List<String> arguments) {
  Square square =Square(side: -10);
  square.side = -10;
  print(square.area);
}