import 'dart:async';
import 'dart:io';

void main() {
  final file = File('data.txt');
  Timer(Duration(seconds: 1), () {
    file.open().then(processFile).catchError((error, stackTrace) {
      print('Catched error is $error\n$stackTrace');
    }, test: (error) {
      return error is FileSystemException;
    }).whenComplete(() {
      print('File closed');
    });
  }).cancel();
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
