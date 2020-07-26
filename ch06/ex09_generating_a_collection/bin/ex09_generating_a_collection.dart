void main() {
  {
    final generated = Iterable.generate(4, (count) => 'Is $count');
    print(generated);
  }
  {
    final generated = Iterable.generate(4);
    print(generated);
  }
}
