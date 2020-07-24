import 'dart:async';

void main() {
  final future = Future.value(499);
  runZoned(() {
    final future2 = future.then((_) {
      throw 'error in first error-zone';
    });
    runZoned(() {
      final future3 = future2.catchError((e) {
        print('Never reached!');
      });
      print('Future3 =$future3');
    }, onError: (e, s) {
      print('unused error handler');
    });
  }, onError: (e, s) {
    print('catches error of first error-zone.');
  });
}
