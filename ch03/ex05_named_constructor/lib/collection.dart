import 'to_map.dart';

class Collection with ToMap {
  List _data;

  Collection() {
    _data = [];
  }
// Add new item
  void add(item) {
    _data.add(item);
  }

}
