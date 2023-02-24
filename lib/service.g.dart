// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$ServiceRouter(Service service) {
  final router = Router();
  router.add(
    'GET',
    r'/say-hi/<name>',
    service.hi,
  );
  router.all(
    r'/<ignored|.*>',
    service.notFound,
  );
  return router;
}
