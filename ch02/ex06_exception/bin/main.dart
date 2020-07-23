import 'dart:io';

void main() {
  var uri = Uri.file('test.json');

  if (uri != null) {
    var file = File.fromUri(uri);

    if (file.existsSync()) {
      var random = file.openSync();

      if (random != null) {
        List<int> notReadyContent = random.readSync(random.lengthSync());
        if (notReadyContent != null) {
          var content = String.fromCharCodes(notReadyContent);
          print('File content: ${content}');
        }
        random.closeSync();
      }
    } else {
      print("File doesn't exist");
    }
  }
}
