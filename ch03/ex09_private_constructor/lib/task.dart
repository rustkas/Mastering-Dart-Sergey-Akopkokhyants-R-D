class Task {
  int id;
  Task._() {
    print('_');
  }
  Task._internal() {
    Task._();
  }
  Task() {
    Task._internal();
  }
}
