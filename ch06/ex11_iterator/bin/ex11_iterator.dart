void main() {
  final colors = ['red', 'green', 'blue'];
  {
    Iterator<String> iter;
    iter = colors.iterator;
    while (iter.moveNext()) {
      print(iter.current);
    }
  }
  {
    for (var color in colors) {
      print('\t$color');
    }
  }
}
