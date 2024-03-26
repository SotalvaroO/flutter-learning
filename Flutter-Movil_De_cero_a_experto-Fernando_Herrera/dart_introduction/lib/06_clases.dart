class Hero {
  String name;
  String power;

  /* Hero(
      String name,
      String
          power) //have to use ":" because it's when the variable is initialized, "{}"  happens after the constructor
      : this.name = name,
        this.power = power; */

  //Hero(this.name, this.power); //short constructor
  Hero({required this.name, required this.power});

  //Named constructor
  Hero.fromJson(Map<String, dynamic> json)
      : name = json["name"] ?? "not name found",
        power = json["power"] ?? "not power found";

  @override
  String toString() {
    return "$name - $power";
  }
}
