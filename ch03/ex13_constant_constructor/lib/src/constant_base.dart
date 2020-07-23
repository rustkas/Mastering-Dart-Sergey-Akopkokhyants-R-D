class Request {
  static const int AWAIT = 0;
  static const int IN_PROGRESS = 1;
  static const int SUCCESS = 2;
  static const int FAULT = 3;

  int result = AWAIT;

  void send({status = IN_PROGRESS}) {}
}
