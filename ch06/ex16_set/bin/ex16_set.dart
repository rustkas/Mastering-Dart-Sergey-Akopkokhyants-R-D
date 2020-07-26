void main() {
  // ignore: prefer_collection_literals
  var aset = Set.from([3, 2, 3, 1]);
  print(aset);
// => {3, 2, 1}
// ignore: prefer_collection_literals
  var other = Set.from([2, 1, 5, 6]);
  print(other);
// => {2, 1, 5, 6}
  var intersect = aset.intersection(other);
  print(intersect);
// => {2, 1}
}
