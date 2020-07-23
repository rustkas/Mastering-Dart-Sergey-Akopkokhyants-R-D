// Operation
var operation;
void main() {
// assign reference to function [add]
  operation = add;
// Execute operation
  final result = operation(2, 1);
  print('Result is ${result}');
}

// returns sum of [a] and [b]
int add(a, b) {
  return a + b;
}
