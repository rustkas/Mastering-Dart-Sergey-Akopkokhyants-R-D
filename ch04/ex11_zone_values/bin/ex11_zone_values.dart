import 'dart:async';
import 'dart:io';

void main() {
  runZoned(runServer);
}

void runServer() {
  HttpServer.bind(InternetAddress.anyIPv4, 8080).then((server) {
    final tokens = {'1234567890'};
    var allowPrintContent = false;
    server.listen((HttpRequest request) {
      runZoned(
          () {
            Zone.current.print('Resource ${request.uri.path}');
            authenticate(request.headers.value('auth-token'));
          },
          zoneValues: {'tokens': tokens},
          onError: (e) {
            request.response.statusCode = HttpStatus.unauthorized;
            request.response.write(e.toString());
            request.response.close();
          });
      runZoned(
          () {
            readFile(request.uri.path).then((String context) {
              request.response.write(context);
              request.response.close();
              server.close();
            });
          },
          zoneValues: {'allow-print': allowPrintContent},
          zoneSpecification: ZoneSpecification(print:
              (Zone self, ZoneDelegate parent, Zone zone, String message) {
            if (zone['allow-print']) {
              parent.print(zone, message);
            }
          }),
          onError: (e) {
            request.response.statusCode = HttpStatus.notFound;
            request.response.write(e.toString());
            request.response.close();
          });
    });
  });
}

void authenticate(String token) {
  Set tokens = Zone.current['tokens'];
  if (!tokens.contains(token)) {
    throw Exception('Access denied');
  }
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
