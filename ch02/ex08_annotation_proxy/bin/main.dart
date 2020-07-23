import 'package:ex08_annotation_proxy/car_info.dart';

void main() {
  var car = Car();
  car.accelerate(10);
  print('Car speed is ${car.speed}');

// Using Proxy annotation is deprecated
  var proxy = CarProxy(car);
  // proxy.accelerate(10);
  // print('Car speed through proxy is ${proxy.speed}');
}
