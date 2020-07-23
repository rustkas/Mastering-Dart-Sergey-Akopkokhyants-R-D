import 'package:ex14_constunt_constructor/constant.dart';

void main() {
  final request = Request();

  request.send(status: RequestStatus.SUCCESS);
  RequestStatus status;
  status = request.result;

  switch (status) {
    case RequestStatus.AWAIT:
      print('Result is $status');

      break;
  }
}
