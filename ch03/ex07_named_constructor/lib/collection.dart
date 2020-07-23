import 'to_map.dart';

class Collection with ToMap {
  List _data;

  Collection() {
    _data = [];
  }
// Create collection from [values]
  Collection.fromList(Iterable values) {
    _data = values == null ? [] : List.from(values);
  }
// Create collection from [item]
  Collection.fromItem(String item) {
    _data = [];
    if (item != null) {
      add(item);
    }
  }
// Add new item
  void add(item) {
    _data.add(item);
  }
}
