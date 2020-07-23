import 'dart:mirrors';

mixin ToMap {
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
