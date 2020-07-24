import 'dart:async';
import 'dart:io';

void main() {
  runZoned(runServer);
}

void runServer() {
  HttpServer.bind(InternetAddress.anyIPv4, 8080).then((server) {
    server.listen((HttpRequest request) {
      runZoned(() {
        readFile(request.uri.path).then((String context) {
          request.response.write(context);
          request.response.close();
          server.close();
        });
      }, onError: (e) {
        request.response.statusCode = HttpStatus.notFound;
        request.response.write(e.toString());
        request.response.close();
        server.close();
      });
    });
  });
}

Future<String> readFile(String fileName) {
  switch (fileName.trim()) {
    case '/':
    case '/index.html':
    case '/favicon.ico':
      return Future.sync(() => 'Hello, world!');
  }
  return Future.sync(() => throw Exception('Resource is not available'));
}
