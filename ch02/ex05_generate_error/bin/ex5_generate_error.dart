void main() {
  final list = List(1);

  for (var i = 0; i < 10; i++) {
    list[i] = i;
  }
  print('Result is ${list}');
}
