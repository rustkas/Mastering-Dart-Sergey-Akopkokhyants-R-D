import 'dart:async';

void main() {
  final request = Request();
  final duration = Duration(milliseconds: 1000);

  Timer.periodic(duration, (timer) => request.send());
}

class Request {
  void send() {
    print('Request sent');
  }
}
