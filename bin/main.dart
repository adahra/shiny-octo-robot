import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_web_socket/shelf_web_socket.dart';

void main() async {
  var handler = webSocketHandler((webSocket) {
    webSocket.stream.listen((message) {
      webSocket.sink.add('Echo: $message');
    });
  });

  shelf_io.serve(handler, 'localhost', 8100).then((server) {
    print('Serving at http://${server.address.host}:${server.port}');
  });
}
