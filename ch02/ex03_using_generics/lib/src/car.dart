abstract class Car {
  String color;
}

// Passenger car
class PassengerCar extends Car {
  @override
  String toString() => 'Passenger Car';
}

// Truck
class Truck extends Car {
  @override
  String toString() => 'Truck';
}
