import 'dart:async';

void main() {
// some sample data
  var data = [1, 2, 3, 4, 5];
// create the stream
  var stream = Stream<num>.fromIterable(data);
// Create a view
  var streamView = StreamView(stream);
// Now listen stream view like stream
  streamView.listen((data) {
    print(data);
  }, onError: (error) {
    print(error);
  }, onDone: () {
    print('done');
  });
}
