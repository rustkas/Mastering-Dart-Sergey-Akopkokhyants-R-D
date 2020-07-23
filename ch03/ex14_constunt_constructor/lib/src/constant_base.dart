import 'package:ex14_constunt_constructor/src/request_status.dart';

class Request {
  var result = RequestStatus.AWAIT;

  void send({status = RequestStatus.IN_PROGRESS}) {}
}
