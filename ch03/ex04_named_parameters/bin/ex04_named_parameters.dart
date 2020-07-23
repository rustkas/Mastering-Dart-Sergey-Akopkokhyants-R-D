import 'dart:mirrors';

void main() {
  Car car;
  car = Car(weight: 750, color: 'blue');
  print(car);
}

class Car {
  String color;
  int weight;
  Car({this.color = 'white', this.weight = 1000});

  Map toMap() {
    final map = <String, dynamic>{};
    var im = reflect(this);
    Iterable<VariableMirror> declarations;
    declarations = im.type.declarations.values.whereType();
    for (var declaration in declarations) {
      final name = declaration.simpleName;
      final fieldName = MirrorSystem.getName(name);
      map[fieldName] = im.getField(name).reflectee;
    }
    return map;
  }

  @override
  String toString() {
    return toMap().toString();
  }
}
