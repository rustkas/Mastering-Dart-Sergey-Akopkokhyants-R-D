import 'dart:async';
import 'dart:io';

void main() {
  var stream =
      File('stream.dart').openRead().map((x) => throw 'Callback throws');

  runZoned(() {
    stream.listen(print);
  }, onError: (e) {
    print('Caught error: $e');
  });
}