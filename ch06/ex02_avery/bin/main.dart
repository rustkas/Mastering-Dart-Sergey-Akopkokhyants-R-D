void main() {
  final colors = ['red', 'green', 'blue'];
  print(colors.every((color) => color != null || color != ''));
// => true
}
