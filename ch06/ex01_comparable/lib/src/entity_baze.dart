class Entity implements Comparable {
  final int index;
  Entity(this.index);

  @override
  int compareTo(other) {
    return index.compareTo(other.index);
  }

  @override
  String toString() => index != null ? index.toString() : null;
}
