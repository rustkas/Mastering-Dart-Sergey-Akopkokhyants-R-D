import 'dart:collection';

void main() {
  var map = Map.fromIterables([1, 2, 3, 4], ['1', '2', '3', '4']);
  map[5] = '5';
  var unmodifiable = UnmodifiableMapView(map);
  try {
    unmodifiable[6] = '6';
  } on UnsupportedError {
    print('You can not add an element to unmodifiable map');
  }
}
