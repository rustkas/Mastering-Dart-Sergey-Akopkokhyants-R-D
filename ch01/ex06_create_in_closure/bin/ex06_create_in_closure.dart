void main() {
// The outer function returns inner
  final f = calculate(2);
// Now we call closure
  for (var i = 0; i < 10; i++) {
    printResult(f);
  }
}

void printResult(void Function() func) {
  func();
}

/// function returns closure function.
void Function() calculate(int base) {
  var count = 1;

  return () => print('Value is ${base + count++}');
}
