import 'package:dio/dio.dart';
import 'package:relacionamento_app/src/shared/constants.dart';

class CustomDio {
  Dio dio = Dio();

  CustomDio() {
    dio.options.baseUrl = URL_API;

    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) {
      return options;
    }, onResponse: (Response response) {
      return response;
    }, onError: (DioError e) {
      return e;
    }));
  }

  Dio getClient() => dio;
}
