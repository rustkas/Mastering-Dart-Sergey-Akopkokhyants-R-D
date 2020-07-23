import 'enumerated_type.dart';

class RequestStatus<int> extends Enum<int> {
  
  static const RequestStatus AWAIT = RequestStatus(0);
  static const RequestStatus IN_PROGRESS = RequestStatus(1);
  static const RequestStatus SUCCESS = RequestStatus(2);
  static const RequestStatus FAULT = RequestStatus(3);
  
  const RequestStatus(int value) : super(value);
}
