import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  // final header = context.request.headers;
  // final contentType = header['Content-Type'];
  // final apiKey = header['x-api-key'];

  // final formData = await context.request.formData();
  // final name = formData.fields['name'];
  // final image = formData.files['image'];

  // final jsonBody = await context.request.json();

  return Response.json(
    // headers: {
    //   'title': 'Input Created',
    // },
    body: [
      {
        'name': 'indra',
        'email': 'indra@google.co.id',
      },
      {
        'name': 'trisna',
        'email': 'trisna@google.co.id',
      },
    ],
  );
}
