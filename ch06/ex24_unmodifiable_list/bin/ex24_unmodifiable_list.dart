import 'dart:collection';

void main() {
  var list = List.from([1, 2, 3, 4]);
  list.add(5);
  var unmodifiable = UnmodifiableListView(list);
  try {
    unmodifiable.add(6);
  } on UnsupportedError {
    print('You can not add an element to unmodifiable list');
  }
}
