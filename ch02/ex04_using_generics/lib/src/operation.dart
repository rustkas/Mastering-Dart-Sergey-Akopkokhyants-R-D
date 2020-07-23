import 'car.dart';

class Operation<E extends Car> implements Function {
  final String name;

  Operation(this.name);

  void call(E car) {
    print('Make ${name} on ${car}');
  }
}
