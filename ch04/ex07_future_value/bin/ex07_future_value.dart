void main() {
  {
    final valueFuture = Future.value(true);
    valueFuture.then((res) => print(res));
  }
  {
    final valueFuture = Future.value(85);
    valueFuture.then((res) => print(res));
  }
    {
    final valueFuture = Future.value('ok');
    valueFuture.then((res) => print(res));
  }
  {
    final valueFuture = Future.value(85.98);
    valueFuture.then((res) => print(res));
  }
}
