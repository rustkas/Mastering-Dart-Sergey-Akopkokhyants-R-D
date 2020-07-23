import 'package:ex07_classes/src/passenger.dart';

/// Abstract class [Car] can't be instantiated.
abstract class Car {
  /// Color of the car.
  String color;

  /// Speed of the car.
  double speed;

  /// Carrying capacity
  double carrying;

  Car(this.color, this.carrying);

  /// Create new [Car] with [color] and [carrying] info.
  factory Car.of(color, carrying) {
    return PassengerCar(color, carrying);
  }

  /// Move car with [speed]
  void move(double speed) {
    this.speed = speed;
  }

  /// Stop car.
  void stop() {
    speed = 0.0;
  }
}
