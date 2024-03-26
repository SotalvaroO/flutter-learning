class Square {
  double _side;

  Square({required double side})
      : assert(side >= 0),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    //if (value < 0) throw 'Must be greater than 0';
    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
