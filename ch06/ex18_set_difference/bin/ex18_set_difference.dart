void main() {
  var list = [3, 2, 3, 1];
  var aset = Set.from(list);
  print(aset);
// => {3, 2, 1}
  list = [2, 1, 5, 6];
  var other = Set.from(list);
  print(other);
// => {2, 1, 5, 6}
  var difference = aset.difference(other);
  print(difference);
// => {3}
}
