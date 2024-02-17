import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  return switch (context.request.method) {
    HttpMethod.patch => await _update(context),
    HttpMethod.delete => _delete(),
    _ => _notFound(),
  };
}

Future<Response> _update(RequestContext context) async {
  final json = await context.request.json();
  json['title'];
  json['description'];

  return Response.json(
    body: {
      'id': 1,
      'title': 'Note 1',
      'description': 'Description 1',
    },
  );
}

Response _delete() {
  return Response.json(
    statusCode: HttpStatus.noContent,
  );
}

Response _notFound() {
  return Response(
    statusCode: HttpStatus.notFound,
    body: 'not found',
  );
}
