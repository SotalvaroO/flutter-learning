import 'package:dart_introduction/08_abstract_enum.dart';
import 'package:dart_introduction/13_streams.dart';

void main(List<String> arguments) {
  /* emitNumbers().listen((event) {
    print(event);
  }); */
  emitNumberAsync().listen((event) {
    print(event);
  });
}
