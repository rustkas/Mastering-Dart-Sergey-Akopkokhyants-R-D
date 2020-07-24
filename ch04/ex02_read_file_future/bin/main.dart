import 'dart:io';

void main() {
  final file = File('data.txt');
  file.open().then(processFile);
}

void processFile(RandomAccessFile file) {
  file.length()
  .then((int length) {
    file.read(length)
  .then(readFile).whenComplete(() {
      file.close();
    });
  });
}

void readFile(List<int> content) {
  final contentAsString = String.fromCharCodes(content);
  print('Content: $contentAsString');
}
