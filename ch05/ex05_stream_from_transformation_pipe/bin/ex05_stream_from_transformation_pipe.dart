import 'dart:async';

void main() {
  // some sample data
  var data = [1, 2, 3, 4, 5];
// create the stream
  var stream = Stream<num>.fromIterable(data);
// Create DoublingTransformer
  var streamTransformer = DoublingTransformer();
// Bound streams
  var boundStream = stream.transform(streamTransformer);
// Because we start listening the 'bound' stream the 'listen' method
// invokes the 'doublingTransformer' closure
  boundStream.listen((data) {
    print('$data');
  });
}

/// An interface that abstracts creation or handling of
/// Stream events.
class DoublingSink implements EventSink<num> {
  final EventSink<num> _output;
  DoublingSink(this._output);

  /// Send a data event to a stream.
  @override
  void add(num event) {
    _output.add(event * 2);
  }

  /// Send an async error to a stream.
  @override
  void addError(errorEvent, [StackTrace stackTrace]) =>
      _output.addError(errorEvent, stackTrace);

  /// Send a done event to a stream.
  @override
  void close() => _output.close();
}

class DoublingTransformer implements StreamTransformer<num, num> {
  @override
  Stream<num> bind(Stream<num> stream) {
    return Stream<num>.eventTransformed(
        stream, (EventSink sink) => DoublingSink(sink));
  }

  @override
  StreamTransformer<RS, RT> cast<RS, RT>() {
    throw UnimplementedError();
  }
}
