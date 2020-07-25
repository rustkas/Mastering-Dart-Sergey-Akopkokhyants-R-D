import 'dart:async';

void main() {
// some sample data
  var data = [1, 2, 3, 4, 5];
// create the stream
  var stream = Stream<num>.fromIterable(data);
// Create StreamTransformer with transformer closure
  var streamTransformer = StreamTransformer<num, num>(doublingTransformer);
// Bound streams
  var boundStream = stream.transform(streamTransformer);
// Because we start listening the 'bound' stream the
// 'listen' method invokes the 'doublingTransformer'
// closure
  boundStream.listen((data) {
    print('$data');
  });
}

StreamSubscription<num> doublingTransformer(
    Stream<num> input, bool cancelOnError) {
  
  StreamController<num> controller;
  controller = StreamController<num>(onListen: () {
    input.listen((data) {
// Scale the data double.
      controller.add(data * 2);
    },
        onError: controller.addError,
        onDone: controller.close,
        cancelOnError: cancelOnError);
  });
  return controller.stream.listen(null);
}
