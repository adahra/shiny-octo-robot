import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

part 'api.g.dart';

class Api {
  @Route.get('/messages')
  @Route.get('/messages/')
  @Route.post('/messages/')
  @Route.put('/messages/')
  @Route.delete('/messages/')
  Future<Response> message(Request request) async {
    return Response.ok('[]');
  }

  @Route.all('/<ignored|.*>')
  Response notFound(Request request) => Response.notFound('Page not found');

  Router get router => _$ApiRouter(this);
  // Router get router {
  //   final router = Router();

  //   router.get('/messages', _message);
  //   router.get('/messages/', _message);
  //   router.post('/messages/', _message);
  //   router.put('/messages/', _message);
  //   router.delete('/messages/', _message);

  //   router.all('/<ignored|.*>', (Request request) => Response.notFound('null'));

  //   return router;
  // }
}
