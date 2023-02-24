// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$ApiRouter(Api service) {
  final router = Router();
  router.add(
    'GET',
    r'/messages',
    service.message,
  );
  router.add(
    'GET',
    r'/messages/',
    service.message,
  );
  router.add(
    'POST',
    r'/messages/',
    service.message,
  );
  router.add(
    'PUT',
    r'/messages/',
    service.message,
  );
  router.add(
    'DELETE',
    r'/messages/',
    service.message,
  );
  router.all(
    r'/<ignored|.*>',
    service.notFound,
  );
  return router;
}
