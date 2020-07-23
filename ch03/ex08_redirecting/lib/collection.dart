import 'to_map.dart';

class Collection with ToMap {
  List _data;

  Collection() {
    _data = [];
  }

  Collection.fromList(Iterable values) {
    _data = values == null ? [] : List.from(values);
  }

  Collection.fromItem(String item) {
    _data = [];
    if (item != null) {
      add(item);
    }
  }

  Collection.fromMap(Map map) {
    _data = map == null ? [] : List.from(map.values);
  }

  void add(item) {
    _data.add(item);
  }
}
