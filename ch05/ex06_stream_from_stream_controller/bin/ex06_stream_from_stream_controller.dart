import 'dart:async';

void main() {
  // create the stream
  Stream<num> stream;
  stream = createStream();

  // Start listening
  createSubscription(stream);
}

StreamSubscription<num> createSubscription(Stream<num> stream) {
  StreamSubscription subscriber;
  subscriber = stream.listen((num data) {
    print('onData: $data');
// Pause subscription on 3-th element
    if (data == 3) {
      subscriber
          .pause(Future.delayed(const Duration(milliseconds: 500), () => 'ok'));
    }
  },
      onError: (error) => print('onError: $error'),
      onDone: () => print('onDone'));
  return subscriber;
}

Stream<num> createStream() {
  StreamController<num> controller;
  controller = StreamController<num>(
      onListen: () => print('Listening'),
      onPause: () => print('Paused'),
      onResume: () => print('Resumed'),
      onCancel: () => print('Canceled'),
      sync: false);
//
  num i = 0;
  Future.doWhile(() {
    controller.add(i++);
// Throws exception on 5-th element
    if (i == 5) {
      controller.addError('on ${i}-th element');
    }
// Stop stream at 7-th event
    if (i == 7) {
      controller.close();
      return false;
    }
    return true;
  });
  return controller.stream;
}
