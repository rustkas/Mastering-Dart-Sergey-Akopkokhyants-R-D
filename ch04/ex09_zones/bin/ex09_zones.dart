import 'dart:async';
import 'dart:io';

void main() {
  runZoned(runServer, onError: (e) {
    print(e);
  });
}

void runServer() {
  HttpServer.bind(InternetAddress.anyIPv4, 8080).then((server) {
    server.listen((HttpRequest request) {
      request.response.write('Hello, world!');
      request.response.close();
      server.close();
    });
  });
}
