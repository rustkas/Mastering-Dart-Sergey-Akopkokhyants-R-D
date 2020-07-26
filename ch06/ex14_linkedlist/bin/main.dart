import 'dart:collection';

void main() {
  final list = LinkedList<Element>();
  final b = Element('B');
  list.add(b);
  //

  b.insertAfter(Element('A'));
  b.insertBefore(Element('C'));
  print(list);
  // => (C, B, A)

  b.unlink();
  print(list);
}

class Element<E> extends LinkedListEntry<Element> {
  final E value;

  Element(this.value);

  @override
  String toString() => value != null ? value.toString() : null;
}
