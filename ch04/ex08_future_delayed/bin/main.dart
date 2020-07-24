void main() {
  final calc = Future.delayed(Duration(seconds: 5), computation);
  calc.then((res) => print(res));
}

int computation() {
  return 2 + 2;
}
