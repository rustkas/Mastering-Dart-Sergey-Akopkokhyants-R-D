import 'car.dart';

class AssemblyLine <E extends Car>{
  final List<E> _items = [];

  void add(E item) {
    _items.add(item);
  }

// Make operation on all items in line.
  void make(operation) {
    _items.forEach((E item) {
      operation(item);
    });
  }
}
