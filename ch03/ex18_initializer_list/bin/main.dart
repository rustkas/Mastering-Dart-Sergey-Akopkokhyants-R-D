void main() {
  print(Third(false));
  print(Third(true));
  print(Third(null));
}

class Third {
  final bool isActive;
  Third(value) : isActive = value != null;
  @override
  String toString() {
    return isActive.toString();
  }
}
