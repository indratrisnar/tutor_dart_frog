import 'package:dart_frog/dart_frog.dart';

import '../common/app_response.dart';

// Handler middleware(Handler handler) {
//   return (context) async {
//     // Execute code before request is handled.
//     print('before request is handled');

//     // Forward the request to the respective handler.
//     final response = await handler(context);
//     print('request process');

//     // Execute code after request is handled.
//     print('after request is handled');

//     // Return a response.
//     return response;
//   };
// }
AppResponse _appResponse = AppResponse();

Handler middleware(Handler handler) {
  return handler
      .use(
        requestLogger(),
      )
      .use(
        provider<AppResponse>((context) => _appResponse),
      );
}
