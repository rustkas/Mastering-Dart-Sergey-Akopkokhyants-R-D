void main() {
  final colors = ['red', 'green', 'blue'];
  print(colors.expand((color) {
    return color == 'red' ? ['orange', 'red', 'yellow'] : [color];
  }));
  print(colors.map((color) {
    if (color == 'green') return 'orange';
    if (color == 'blue') return 'yellow';
    return color;
  }));
  final nums = [1, 2, 3, 4, 5, 6];
  print(nums.take(7));
  print(nums.takeWhile((element) => element < 5));
  print(nums.skip(4));
  print(nums.skipWhile((element) => element <= 4));
  print(nums.where((element) => element > 1 && element < 5));
  print(nums.toList(growable:false));
  print(nums.toSet());
}
