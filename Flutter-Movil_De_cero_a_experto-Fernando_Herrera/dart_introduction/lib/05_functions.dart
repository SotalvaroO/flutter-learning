void functions() {
  myArrow();
  addTwoNumbers(1, 2);
  addTwoNumbersOptionals(1);
  nameParameters(name: "name");
}

String myArrow() => "This is an arrow";

int addTwoNumbers(int a, int b) => a + b;
int addTwoNumbersOptionals(int a, /* [int? b] */ [int b = 0]) {
  //[] makes arg optional
  //b ??= 0;   //Equals b = b ?? 0
  return a + b;
}

String nameParameters({required String name, String message = "Hola"}) {
  return "$message $name";
}
