import 'package:dio/dio.dart';

Dio dio() {
  var dio = Dio(
    BaseOptions(
      baseUrl: 'https://ba8e-110-137-194-130.ngrok-free.app/api/',
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json'
      },
      responseType: ResponseType.json,
    ),
  );

  // dio
  //   ..interceptors.add(InterceptorsWrapper(
  //       onRequest: ((options, handler) => requestInterceptor(options))));

  return dio;
}

// dynamic requestInterceptor(RequestOptions options) async {
//   if (options.headers.containsKey('auth')) {
//     var token = await Auth().getToken();

//     options.headers.addAll({
//       'Authorization': 'Bearer $token',
//     });
//   }
// }
