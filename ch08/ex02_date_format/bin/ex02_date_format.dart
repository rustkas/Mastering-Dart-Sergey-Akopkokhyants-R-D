import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main() {
  initializeDateFormatting(null, null).then((_) {
    Intl.defaultLocale = 'de_DE';
    final df = DateFormat('EEE, MMM d, yyyy');
    print(df.format(DateTime.now()));
  }).catchError((err) {
    print(err);
  });
// Result: Sa., Sep. 20, 2014
}
