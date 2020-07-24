import 'dart:async';
import 'dart:io';

import 'package:http_server/http_server.dart';

void main() {
  HttpServer http_server;
  var staticFiles = VirtualDirectory('web');
  staticFiles.allowDirectoryListing = true;
  staticFiles.directoryHandler = (dir, request) {
    var indexUri = Uri.file(dir.path).resolve('index.html');
    staticFiles.serveFile(File(indexUri.toFilePath()), request);
    try {
      throw AsyncError(Object(), null);
    } finally {
      http_server.close();
    }
  };

  runZoned(() {
    HttpServer.bind(InternetAddress.anyIPv4, 8080).then((server) {
      http_server = server;
      server.listen(staticFiles.serveRequest);
    });
  }, onError: (e, stackTrace) => print('Oh noes! $e $stackTrace'));
}
