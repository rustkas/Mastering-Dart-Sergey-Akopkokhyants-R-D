void main() {
  print(First());
  print(Second(true));
}

class First {
  final bool isActive = false;
  First();
  @override
  String toString() {
    return isActive.toString();
  }
}

class Second {
  final bool isActive;
  Second(this.isActive);
    @override
  String toString() {
    return isActive.toString();
  }
}
