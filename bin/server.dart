import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_core_example/service.dart';

void main() async {
  final service = Service();
  final server = await shelf_io.serve(service.handler, 'localhost', 8100);

  print('Serving at http://${server.address.host}:${server.port}');
}
