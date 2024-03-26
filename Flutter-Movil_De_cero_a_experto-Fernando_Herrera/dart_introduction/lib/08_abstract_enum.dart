enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double energy);
}

class WindPlant extends EnergyPlant {
  //First option
  //WindPlant({required super.energyLeft, required super.type});

  //Second option
  WindPlant({required double energyLeft})
      : super(energyLeft: energyLeft, type: PlantType.wind);

  @override
  void consumeEnergy(double energy) {
    energyLeft -= energy;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double energy) {
    energyLeft -= (energy * 0.5);
  }
}
