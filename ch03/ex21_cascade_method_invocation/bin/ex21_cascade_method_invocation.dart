void main() {
  SomeClass some;
  some = SomeClass()
    ..name = 'John'
    ..id = 1;
  print(some);
}

class SomeClass {
  String name;
  int id;
  @override
  String toString() {
    
    return '$id $name';
  }
}
