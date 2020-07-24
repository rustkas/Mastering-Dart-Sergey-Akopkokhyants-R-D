import 'dart:async';

void main() {
  runZoned(() {
    Future(() {
      throw 'asynchronous error';
    });
  }, onError: (e, s) => print(e)); // Will print "asynchronous error".
}
