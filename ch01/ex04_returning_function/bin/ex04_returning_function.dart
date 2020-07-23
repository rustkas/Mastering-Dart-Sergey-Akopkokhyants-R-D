void main() {
  {
// Choose function depends on operation type
    var operation = chooser(true);
// Execute it
    var result = operation(2, 1);
// Result
    print('Result is ${result}');
  }

  {
    // Choose function depends on operation type
    var operation = chooser(false);
// Execute it
    var result = operation(2, 1);
// Result
    print('Result is ${result}');
  }
}

/// returns sum of [a] and [b]
int add(a, b) => a + b;

/// returns difference between [a] and [b]
int sub(a, b) => a - b;

typedef ReturnFunction = int Function(int a, int b);

/// Choose the function depends on [type]
ReturnFunction chooser(bool operation) => operation ? add : sub;
