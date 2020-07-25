import 'dart:async';

void main() {
// some sample data
  var data = [1, 2, 3, 4, 5];
// create the stream
  var stream = Stream<num>.fromIterable(data);
// Create an iterator
  var iterator = StreamIterator(stream);
// Iterate over all elements of iterator and print values
  forEach(iterator, (value) {
// Scale the data double.
    print(value * 2);
  });
}

Future forEach(StreamIterator iterator, f(element)) {
  return Future.doWhile(() {
    Future<bool> future;
    future = iterator.moveNext();
    future.then((hasNext) {
      if (hasNext) {
        f(iterator.current);
      }
    });
    return future;
  });
}
