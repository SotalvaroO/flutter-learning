void varTypes() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['front.png'];
  //dynamic is null by default
  dynamic errorMessage = "Hola";
  errorMessage = true;
  errorMessage = [1, 2, 3, 4];
  errorMessage = {1, 2, 3, 4};
  errorMessage = () => true;
  errorMessage = null;

  //this could be an error
  errorMessage += 1;

  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    $errorMessage
  """);
}
