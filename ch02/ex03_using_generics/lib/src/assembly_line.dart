class AssemblyLine {
  final List _items = [];

  void add(item) {
    _items.add(item);
  }

// Make operation on all items in line.
  void make(operation) {
    _items.forEach((item) {
      operation(item);
    });
  }
}
