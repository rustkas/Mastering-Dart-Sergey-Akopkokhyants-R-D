import 'dart:async';

void main() {
  // create the stream
  // Stream<num> stream;
  StreamController<num> controller;
  controller = createStream();

  for (var i = 0; i < 100;i++){
    createSubscription(controller, i);
  } 
  // createSubscription(controller, 1);
  // createSubscription(controller, 2);
}

StreamSubscription<num> createSubscription(
    StreamController<num> controller, num number) {
// Start listening
  StreamSubscription subscriber;

  var onData = (data) {
    print('onData ${number}: $data');
// Pause subscription on 3-th element

    if (data == 3) {
      subscriber
          .pause(Future.delayed(const Duration(milliseconds: 500), () => 'ok'));
    }
  };

  final onError = (error) => print('onError: $error');
  var onDone = () => print('onDone');

  subscriber = controller.stream.listen(onData);

  controller.stream.listen(onData, onDone: onDone, onError: onError);
  return subscriber;
}

StreamController<num> createStream() {
  StreamController<num> controller;

  controller = StreamController<num>.broadcast(
      onListen: () => print('Listening'),
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

  return controller;
}
