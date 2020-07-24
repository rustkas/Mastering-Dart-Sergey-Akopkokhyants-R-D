import 'dart:async';
import 'dart:io';

void main() {
  final calc = Future.sync(() {
    final file = File('data.txt');
    return file.open().then(processFile);
  });
  calc.then((res) => print(res));
}

Future<String> processFile(RandomAccessFile file) {
  final completer = Completer<String>();

  file.length().then((int length) {
    Future<String> content;
    content = file.read(length).then(readFile);
    content.whenComplete(() {
      file.close();
    });
    completer.complete(content);
  });
  return completer.future;
}

String readFile(List<int> content) {
  final contentAsString = String.fromCharCodes(content);
  return contentAsString;
}
