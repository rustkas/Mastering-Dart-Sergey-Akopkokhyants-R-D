import 'dart:mirrors';

class MethodInvoker implements Function {
  void call(MethodMirror method) {
    var classMirror = method.owner as ClassMirror;
    var inst = classMirror.newInstance(Symbol(''), []);
    inst.invoke(method.simpleName, []);
  }
}
