import 'dart:async';

void main() {
  runZoned(() {
    print('Will be ignored');
  }, zoneSpecification: ZoneSpecification(print: (self, parent, zone, message) {
    // Ignore message.
    print(message);
  }), onError: (e) => print('Caught error: $e'));
}
