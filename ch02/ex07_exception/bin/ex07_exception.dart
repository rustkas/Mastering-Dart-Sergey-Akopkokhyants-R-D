import 'dart:io';

void main() {
  RandomAccessFile random;
  try {
// File URI
    var uri = Uri.file('test.json');
// Create the file
    var file = File.fromUri(uri);
// Open file
    random = file.openSync();
// Read file
    List<int> notReadyContent = random.readSync(random.lengthSync());
// Convert to String
    var content = String.fromCharCodes(notReadyContent);
// Print results
    print('File content: ${content}');
  } on ArgumentError catch (_) {
    print('Argument error exception');
  } on UnsupportedError catch (_) {
    print('URI cannot reference a file');
  } on FileSystemException catch (_) {
    print("File doesn't exist or accessible");
  } finally {
    try {
      random.closeSync();
    } on FileSystemException catch (_) {
      print("File can't be close");
    }
  }
}
