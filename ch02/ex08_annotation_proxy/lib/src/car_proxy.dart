import 'car.dart';
@proxy
class CarProxy {
  final Car _car;

  CarProxy(this._car);
  @override
  int noSuchMethod(Invocation invocation) {
    if (invocation.isMethod &&
        invocation.memberName == const Symbol('accelerate')) {
      var acc = invocation.positionalArguments[0];

      print('LOG: Accelerate car with ${acc}');

      _car.accelerate(acc);
    } else if (invocation.isGetter &&
        invocation.memberName == const Symbol('speed')) {
      var speed = _car.speed;

      print('LOG: The car speed ${speed}');
      return speed;
    }
    return super.noSuchMethod(invocation);
  }
}
