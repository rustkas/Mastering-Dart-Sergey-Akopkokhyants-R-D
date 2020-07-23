void main() {
  First first;
  first = First();
  first.doSomething();
}

class First {
  bool isActive;
  void doSomething() {
    if (isActive) {}
  }
}
