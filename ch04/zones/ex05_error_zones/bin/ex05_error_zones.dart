import 'dart:async';

void main() {
  var f = Future.error(499);
  f = f.whenComplete(() {
    print('Outside runZoned');
  });
  runZoned(() {
    f = f.whenComplete(() {
      print('Inside non-error zone');
    });
  });
  runZoned(() {
    f = f.whenComplete(() {
      print('Inside error zone (not called)');
    });
  }, onError: print);
}
