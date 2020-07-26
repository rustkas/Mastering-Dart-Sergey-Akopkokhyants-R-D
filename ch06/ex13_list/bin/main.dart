import 'dart:math';

void main() {
  var list = List.from([1, 2, 3, 4, 5]);
  print(list);
// => [1, 2, 3, 4, 5]
// Crete seed to initialize internal state of
// random-number generator
  var seed = DateTime.now().millisecondsSinceEpoch;
// Create instance of generator
  var random = Random(seed);
// Re-arrange elements in list
  list.shuffle(random);
  print(list);
}
