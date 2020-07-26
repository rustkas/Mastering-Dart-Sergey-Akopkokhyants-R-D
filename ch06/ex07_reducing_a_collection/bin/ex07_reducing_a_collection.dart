void main() {
  final nums = [1, 2, 3];
  print(nums.reduce((sum, element) => sum + element));

  print(nums.fold(0, (acc, element) => (acc as int) + element));
}
