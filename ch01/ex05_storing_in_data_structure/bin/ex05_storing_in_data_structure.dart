void main() {

  final operation = operations[0];
  final result = operation(2, 1);

  print('Result is ${result}');
}

/// returns sum of [a] and [b]
int add(int a, int b) => a + b;

/// returns difference between [a] and [b]
int sub(int a, int b) => a - b;

/// choose the function depends on [type]
var operations = [add, sub];
