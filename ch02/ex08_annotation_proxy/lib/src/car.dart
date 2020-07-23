class Car {
  int _speed = 0;
  int get speed => _speed;

  void accelerate(acc) {
    _speed += acc;
  }
}
