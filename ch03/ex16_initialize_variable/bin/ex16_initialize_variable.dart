void main() {
  final first = First(true);
  final second = Second(false);

  print(first);
  print(second);
}

class First {
  bool isActive;
  First(bool isActive) {
    this.isActive = isActive;
  }
}

class Second {
  bool isActive;
  Second(this.isActive);
}
