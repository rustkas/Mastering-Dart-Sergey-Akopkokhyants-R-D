import 'dart:collection';

class NewList<E> extends ListBase {
  final List<E> _elements;
  NewList() : _elements = <E>[];
  
  @override
  E operator [](int index) {
    return _elements[index];
  }

  @override
  void operator []=(int index, value) {
    _elements[index] = value;
  }

  @override
  int get length => _elements.length;
  
  @override
  set length(int newLength) {
    _elements.length = newLength;
  }
}
