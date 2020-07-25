import 'dart:io';

void main() {
  HttpServer.bind(InternetAddress.anyIPv4, 8080).then((server) {
    print('Start server...');
    server.listen((HttpRequest request) {
      File('data.txt').openRead().pipe(request.response);
      server.close();
    });
  });
}
