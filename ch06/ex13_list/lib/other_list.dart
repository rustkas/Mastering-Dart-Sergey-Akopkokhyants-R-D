import 'dart:collection';

class OtherList<E> extends MainList with ListMixin<E> {
  @override
  int length;

  @override
  E operator [](int index) {
    throw UnimplementedError();
  }

  @override
  void operator []=(int index, E value) {}
}

class MainList {
}
