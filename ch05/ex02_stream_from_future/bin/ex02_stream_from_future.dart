import 'dart:async';

void main() {
// single sample data
  var data = Future<num>.delayed(const Duration(milliseconds: 500), () {
// Return single value
    return 2;
  });
// create the stream
  Stream<num> stream;
  stream = Stream<num>.fromFuture(data);
// Start listening
stream.listen((data) {
    print(data);
  }, onError: (error) {
    print(error);
  }, onDone: () {
    print('done');
  });
}
