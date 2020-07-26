void main() {
  final nums = [1, 2, 3];
  print('Get Iterable for nums = $nums');
  Iterable iterable = nums.where((int i) {
    print('Fetched $i');
    return i.isOdd;
  });
  print('Get Iterable for iterable = $iterable');

  print('Start fetching');

  iterable.forEach((i) {
    print('Received $i');
  });
}
