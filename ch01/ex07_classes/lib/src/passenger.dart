import '../car.dart';

/// Passenger car with trailer.
class PassengerCar extends Car {
  /// Max number of passengers.
  int maxPassengers;

  /// Create [PassengerCar] with [color], [carrying] and [maxPassengers].
  PassengerCar(String color, double carrying, [maxPassengers = 4])
      : super(color, carrying);
}
