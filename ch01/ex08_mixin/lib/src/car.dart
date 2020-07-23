import 'dart:mirrors';

abstract class Car {
  String color;
  double speed;
  double carrying;

  Car(this.color, this.carrying);

  void move(double speed) {
    this.speed = speed;
  }

  void stop() {
    speed = 0.0;
  }

  Map toMap() {
    Map<String, dynamic> map;
    map = {};
    InstanceMirror im;
    im = reflect(this);
    ClassMirror classMirror;
    classMirror = im.type;
    do {
	  Iterable<VariableMirror> declarations;
      declarationValues = classMirror.declarations.values.whereType();
      for (var v in declarationValues) {
          final simpleName = v.simpleName;
		  final fieldName = MirrorSystem.getName(simpleName);
          map[fieldName] = im.getField(simpleName).reflectee;
      }
      classMirror = classMirror.superclass;
    } while (classMirror != null);
    return map;
  }

  @override
  String toString() {
    return toMap().toString();
  }
}
