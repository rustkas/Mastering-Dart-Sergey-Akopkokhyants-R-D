import 'to_map.dart';

class Collection with ToMap {
  List _data;

  Collection({Iterable values, String item}) {
    if (item != null) {
      _data = [];
      add(item);
    } else {
      _data = values != null ? List.from(values) : [];
    }
  }
// Add new item
  void add(item) {
    _data.add(item);
  }
}
