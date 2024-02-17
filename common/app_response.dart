import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

class AppResponse {
  Response notFound([Object? body]) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: body ?? 'not found',
    );
  }

  Response badRequest([Object? body]) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: body ?? 'invalid input request',
    );
  }

  Response unAuthorized() {
    return Response.json(
      statusCode: HttpStatus.unauthorized,
    );
  }
}
