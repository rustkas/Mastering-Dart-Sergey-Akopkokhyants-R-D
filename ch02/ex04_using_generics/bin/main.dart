import 'package:ex04_using_generics/assembly.dart';

void operation(car) {
  print('Operate ${car}');
}

void main() {
  // final passengerCarAssembly = AssemblyLine<Car>();
  final passengerCarAssembly =
 AssemblyLine<PassengerCar>();
  passengerCarAssembly.add(PassengerCar());
  // passengerCarAssembly.add(Truck());
  passengerCarAssembly.make(operation);

  // Paint operation for passenger car
  final paint = Operation<PassengerCar>('paint');
  final paintTruck = Operation<Truck>('paint');

  passengerCarAssembly.add(PassengerCar());
  passengerCarAssembly.make(paint);
  passengerCarAssembly.make(paintTruck);
}
