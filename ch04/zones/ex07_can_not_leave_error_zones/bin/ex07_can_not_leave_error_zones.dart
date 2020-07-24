import 'dart:async';

void main() {
  var completer = Completer();
  var future = completer.future.then((x) => x + 1);
  var zoneFuture;
  runZoned(() {
    zoneFuture = future.then((y) => throw 'Inside zone');
  }, onError: (error) async {
    print('Caught: $error');
    print('Is complete = ${completer.isCompleted}');
    print('${await completer.future}');
  });
  zoneFuture.catchError((e) {
    print('Never reached');
  });
  completer.complete(499);
}
