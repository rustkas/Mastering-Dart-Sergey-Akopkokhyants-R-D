import 'dart:async';

void main() {
   use_runZoned();
  //do_not_use_runZoned();
  //remove_onError_on_runZoned();
}

void use_runZoned() {
  runZoned(() {
    Timer.run(() {
      throw 'Would normally kill the program';
    });
    for (var i = 0; i <= 10; i++) {
      if (i >= 0) {
        continue;
      }
    }
    Timer.run(() {
      print('Do next job');
    });
    print('Do simple job');
  }, onError: (error, stackTrace) {
    print('Uncaught error: $error');
  });
}

void do_not_use_runZoned() {
  Timer.run(() {
    throw 'Would normally kill the program';
  });
  for (var i = 0; i <= 10; i++) {
    if (i >= 0) {
      continue;
    }
  }
  Timer.run(() {
    print('Do next job');
  });
  print('Do simple job');
}

void remove_onError_on_runZoned() {
  runZoned(() {
    Timer.run(() {
      throw 'Would normally kill the program';
    });
    for (var i = 0; i <= 10; i++) {
      if (i >= 0) {
        continue;
      }
    }
    Timer.run(() {
      print('Do next job');
    });
    print('Do simple job');
  });
}
