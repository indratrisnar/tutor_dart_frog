import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  return switch (context.request.method) {
    HttpMethod.get => _getNotes(),
    HttpMethod.post => _add(),
    _ => _notFound(),
  };
}

Response _add() {
  return Response.json(
    statusCode: HttpStatus.created,
    body: {
      'id': 1,
      'title': 'Note 1',
      'description': 'Description 1',
    },
  );
}

Response _getNotes() {
  return Response.json(
    body: [
      {
        'title': 'Note 1',
        'description': 'Description 1',
      },
      {
        'title': 'Note 2',
        'description': 'Description 2',
      },
    ],
  );
}

Response _notFound() {
  return Response(
    statusCode: HttpStatus.notFound,
    body: 'not found',
  );
}
