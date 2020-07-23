import 'package:ex08_mixin/mixins.dart';

void main() {
  Car car;
  car = PassengerCar('red', 350.0, 4);
  car.move(234);
  print(car);
}
