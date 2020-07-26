import 'dart:html';
import 'package:intl/date_symbol_data_http_request.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;

// Do not compiled
void main() {
  final datesPath =
      path.join(path.current, path.fromUri('packages/intl/src/data/dates/'));
  initializeDateFormatting('pt_BR', datesPath).then((_) {
    Intl.defaultLocale = 'pt_BR';
    var newPattern = 'EEE, MMM d, yyyy';
    final df = DateFormat(newPattern);
    print(df.format(DateTime.now()));
  }).catchError((err) {
    print(err);
  });
}
