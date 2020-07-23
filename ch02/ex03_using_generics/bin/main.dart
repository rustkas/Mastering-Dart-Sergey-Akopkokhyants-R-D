import 'package:ex03_using_generics/assembly.dart';

void operation(car) {
  print('Operate ${car}');
}

void main() {
  final passengerCarAssembly = AssemblyLine();
  passengerCarAssembly.add(PassengerCar());
  passengerCarAssembly.add(Truck());
  passengerCarAssembly.make(operation);
}
