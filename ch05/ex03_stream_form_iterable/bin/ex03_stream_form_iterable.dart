import 'dart:async';

void main() {
// some sample generated data
  var data = Iterable<num>.generate(5, (int indx) {
    if (indx < 3) {
      return indx;
    } else {
      throw Exception('Wrong data');
    }
  });
// create the stream
  Stream<num> stream;
  stream = Stream<num>.fromIterable(data);
// Start listening
  stream.listen((data) {
    print(data);
  }, onError: (error) {
    print(error);
  }, onDone: () {
    print('done');
  });
}
