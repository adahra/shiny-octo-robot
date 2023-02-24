import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

part 'service.g.dart';

class Service {
  // Handler get handler {
  //   final router = Router();

  //   router.get('/say-hi/<name>', (Request request, String name) {
  //     return Response.ok('hi $name');
  //   });

  //   router.get('/user/<userId|[0-9]+>', (Request request) async {
  //     await Future.delayed(Duration(milliseconds: 100));
  //     return Response.ok('_o/');
  //   });

  //   router.mount('/api/', Api().router);

  //   router.all('/<ignored|.*>', (Request request) {
  //     return Response.notFound('Page not found');
  //   });

  //   return router;
  // }

  @Route.get('/say-hi/<name>')
  Response hi(Request request, String name) => Response.ok('hi $name');

  @Route.all('/<ignored|.*>')
  Response notFound(Request request) => Response.notFound('Page not found');

  Handler get handler => _$ServiceRouter(this);
}
