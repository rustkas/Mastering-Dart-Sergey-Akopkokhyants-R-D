import 'package:ex01_comparable/entity.dart';
import 'package:ex01_comparable/entity2.dart';

void main() {
  {
    var first = Entity(1), second = Entity(2);
    var list = [second, first];
    print(list);
// => [2, 1]
    list.sort();
    print(list);
// => [1, 2]
  }

  {
    var list = [Entity2(2), Entity2(1)];
    print(list);
// => [2, 1]
    list.sort((Entity2 a, Entity2 b) {
      return a.index.compareTo(b.index);
    });
    print(list);
// => [1, 2]
  }
}
