import 'dart:collection';

void main() {
  var queue = Queue();
  queue.add(2);
  queue.add(3);
  queue.addFirst(1);
  print(queue);
// => {1, 2, 3}
  queue.removeLast();
  print(queue);
// => {1, 2}
}
