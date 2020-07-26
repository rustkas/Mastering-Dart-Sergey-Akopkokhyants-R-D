import 'dart:collection';

void main() {
  final list = [];
  LinkedHashSet hset;
  hset = LinkedHashSet.from(list);
  hset.addAll([3, 2, 3, 1]);
  print(hset);
// => {3, 2, 1}
  hset.add(1);
  print(hset);
// => {3, 2, 1}
}
