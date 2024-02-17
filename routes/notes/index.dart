import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../common/app_response.dart';

Response onRequest(RequestContext context) {
  final appResponse = context.read<AppResponse>();
  return switch (context.request.method) {
    HttpMethod.get => _getNotes(),
    HttpMethod.post => _add(),
    _ => appResponse.notFound(),
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
