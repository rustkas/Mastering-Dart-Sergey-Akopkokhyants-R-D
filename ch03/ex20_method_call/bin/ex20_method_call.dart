import 'dart:async';

void main() {
  final duration = Duration(milliseconds: 1000);
  Timer.periodic(duration, Request());
}

class Request {
  void send() {
    print('Request sent');
  }

  void call(Timer timer) {
    send();
  }
}
