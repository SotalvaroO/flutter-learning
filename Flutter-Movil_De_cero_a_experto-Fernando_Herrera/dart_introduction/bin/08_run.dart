import 'package:dart_introduction/08_abstract_enum.dart';

void main(List<String> arguments) {
 EnergyPlant wind = WindPlant(energyLeft: 100);
 EnergyPlant nuclear = NuclearPlant(energyLeft: 1000);

 nuclear.consumeEnergy(100);

 print(nuclear.energyLeft);
}