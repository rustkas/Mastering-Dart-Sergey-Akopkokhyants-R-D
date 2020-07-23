import 'dart:io';

void main() {
  try {
    final file = File('data.txt');
    final handler = file.openSync();
    List<int> content = handler.readSync(handler.lengthSync());
    final contentAsString = String.fromCharCodes(content);
    print('Content: $contentAsString');
    handler.closeSync();
  } on FileSystemException catch (e) {
    print(e.message);
  }
}
