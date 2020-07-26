void main() {
  final list = List.from([1, 2, 3, 4]);
// Forward Iteration
  BiListIterator iter;
  iter = BiListIterator(list);
  while (iter.moveNext()) {
    print(iter.current);
  }

  // Backward Iteration
  iter = BiListIterator(list, back: true);
  while (iter.movePrevious()) {
    print('\t${iter.current}');
  }
}

class BiListIterator<E> implements BidirectionalIterator<E> {
  final Iterable<E> _iterable;
  final int _length;
  int _index;
  E _current;

  BiListIterator(Iterable<E> iterable, {bool back: false})
      : _iterable = iterable,
        _length = iterable.length,
        _index = back ? iterable.length - 1 : 0;

  @override
  E get current => _current;

  @override
  bool moveNext() {
    final length = _iterable.length;
    if (_length != length) {
      throw ConcurrentModificationError(_iterable);
    }
    if (_index >= length) {
      _current = null;
      return false;
    }
    _current = _iterable.elementAt(_index);
    _index++;
    return true;
  }

  @override
  bool movePrevious() {
    final length = _iterable.length;
    if (_length != length) {
      throw ConcurrentModificationError(_iterable);
    }
    if (_index < 0) {
      _current = null;
      return false;
    }
    _current = _iterable.elementAt(_index);
    _index--;
    return true;
  }
}
