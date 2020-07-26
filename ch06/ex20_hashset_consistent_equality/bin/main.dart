import 'dart:collection';

void main() {
  var hset = HashSet(equals: (e1, e2) {
    return e1 == e2;
  }, hashCode: (e) {
    return e.hashCode;
  });
  hset.addAll([3, 2, 3, 1]);
  print(hset);
// => {1, 2, 3}
  hset.add(1);
  print(hset);
  
// => {1, 2, 3}
}
