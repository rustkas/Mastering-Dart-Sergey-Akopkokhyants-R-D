import 'dart:io';

void main() {
  final file = File('data1.txt');
  file.open().then(processFile).catchError((error, stackTrace) {
    print('Catched error is $error\n$stackTrace');
  }, test: (error) {
    return error is FileSystemException;
  }).whenComplete(() {
    print('File closed');
  });
}

void processFile(RandomAccessFile file) {
  file.length().then((int length) {
    file.read(length).then(readFile).whenComplete(() {
      file.close();
    });
  });
}

void readFile(List<int> content) {
  final contentAsString = String.fromCharCodes(content);
  print('Content: $contentAsString');
}
