import 'dart:async';

void main() {
  foo();
  var future;
  runZoned(() {
    // Starts a new child zone (zone #2).
    future = Future(bar).then(baz);
  });
  future.then(qux);
}

void foo() =>
    print('...foo-body...'); // Executed twice (once each in two zones).
void bar() => print('...bar-body...');
void baz(x) => runZoned(() => foo()); // New child zone (zone #3).
void qux(x) => print('...qux-body...');
