import 'dart:collection';

void main() {
  var map = SplayTreeMap((e1, e2) {
    return e1 > e2 ? 1 : e1 < e2 ? -1 : 0;
  });
  map.addAll({300: '3', 200: '2', 10: '1'});
  print(map);
// => {1: 1, 2: 2, 3: 3}
  map.remove(3);
  map[3] = '3';
  print(map);
// => {1: 1, 2: 2, 3: 3}
}
