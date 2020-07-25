import 'dart:async';

void main() {
// some sample data
  var data = [1, 2, 3, 4, 5];
// create the stream
  var stream = Stream<num>.fromIterable(data);
// Create StreamTransformer with transformer closure
  var streamTransformer = StreamTransformer<num, num>.fromHandlers(
      handleData: handleData, handleError: handleError, handleDone: handleDone);
// Bound streams
  var boundStream = stream.transform(streamTransformer);
// Because we start listening the 'bound' stream the
// 'listen' method invokes the 'handleData' function
  boundStream.listen((data) {
    print('$data');
  });
}

void handleData(num data, EventSink<num> sink) {
  sink.add(data * 2);
}

void handleError(Object error, StackTrace stackTrace, EventSink<num> sink) {
  sink.addError(error, stackTrace);
}

void handleDone(EventSink<num> sink) {
  sink.close();
}
