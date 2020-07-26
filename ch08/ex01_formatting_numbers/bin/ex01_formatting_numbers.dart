import 'package:intl/intl.dart';

void main() {
  {
    final f = NumberFormat('###.0#');
    print(f.format(12.345));
  }
  {
    final d = NumberFormat.decimalPattern('de_DE');
    print(d.format(12.345));
  }
  {
    final p = NumberFormat.percentPattern('de_DE');
    print(p.format(12.345));
  }
  {
    final s = NumberFormat.scientificPattern('de_DE');
    print(s.format(12.345));
  }
  {
    final c = NumberFormat.currency(locale: 'de_DE', name: 'EUR');
    print(c.format(12.345));
  }
}
