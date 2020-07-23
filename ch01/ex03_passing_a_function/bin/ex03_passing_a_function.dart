void main() {
  final result = executor(add, 2, 1);
  print('Result is ${result}');
}

// returns sum of [a] and [b]
int add(int a, int b) {
  return a + b;
}
typedef Operation = int Function(int x, int y);

// operation executor
int executor(Operation operation, int x, int y) {
  return operation(x, y);
}
