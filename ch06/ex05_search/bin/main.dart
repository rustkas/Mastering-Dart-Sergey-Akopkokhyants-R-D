void main() {
  final colors = ['red', 'green', 'blue'];

  assert(colors.contains('red'));
  assert(colors.elementAt(0) == 'red');
  assert(
      colors.firstWhere((color) => color == 'orange', orElse: () => 'orange') ==
          'orange');
    assert(
      colors.lastWhere((color) => color != 'orange', orElse: () => '') ==
          'blue'); 
assert(
      colors.singleWhere((color) => color == 'red') == 'red');                    
}
