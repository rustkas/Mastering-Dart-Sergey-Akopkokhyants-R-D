import 'car.dart';
import 'trailer.dart';

/// Passenger car with trailer.
class PassengerCar extends Car with Trailer {
  /// Max number of passengers.
  int maxPassengers = 4;

  ///  Create [PassengerCar] with [color], [carrying] and
  /// [maxPassengers].
  ///  We can use [Trailer] to carry [extraWeight].
  PassengerCar(String color, double carrying, this.maxPassengers,
      {double extraWeight = 0.0})
      : super(color, carrying) {
    carry(extraWeight);
  }

}
