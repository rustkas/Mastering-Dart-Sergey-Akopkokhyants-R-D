import 'dart:async';

void main() {
// some sample generated data
  final stream =
      Stream.periodic(const Duration(milliseconds: 500), (int count) {
// Return count
    return count;
  });
// Start listening
  stream.listen((data) {
    print(data);
  }, onError: (error) {
    print(error);
  }, onDone: () {
    print('done');
  });
}
