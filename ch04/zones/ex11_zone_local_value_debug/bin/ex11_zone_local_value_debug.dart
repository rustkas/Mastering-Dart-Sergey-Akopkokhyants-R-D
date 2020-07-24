import 'dart:async';
import 'dart:convert';
import 'dart:io';

void main() {
  Future.forEach(
      ['foo.txt', 'bar.txt'],
      (file) => splitLines(file).then((lines) {
            lines.forEach(print);
          }));
}

Future splitLines(filename) {
  return runZoned(() {
    return splitLinesStream(File(filename).openRead());
  }, zoneValues: {#filename: filename});
}

Future splitLinesStream(stream) {
  return stream
      .transform(ascii.decoder)
      .transform(const LineSplitter())
      .map((line) => '${Zone.current[#filename]}: $line')
      .toList();
}
