abstract class Animal {}

abstract class Mamal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin class Flying {
  void fly() => print("Flying");
}

mixin class Land {
  void walk() => print("walking");
}

mixin Aquatic {
  void swim() => print("swimming");
}

class Dolphin extends Mamal with Aquatic {}

class Bat extends Mamal with Flying, Land {}
