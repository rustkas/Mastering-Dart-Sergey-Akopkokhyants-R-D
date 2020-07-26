import 'dart:collection';

void main() {
  var sset = SplayTreeSet();
  sset.addAll(['33', '2', '33', '10']);
  print(sset);
// => (10, 2, 33)
}
