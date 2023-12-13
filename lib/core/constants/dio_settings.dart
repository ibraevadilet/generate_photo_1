import 'package:ai_photo1/core/constants/app_url.dart';
import 'package:dio/dio.dart';

class DioSettings {
  DioSettings() {
    initialSettings();
  }

  Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.openai.com/v1/images/',
      responseType: ResponseType.json,
      contentType: "application/json; charset=utf-8",
      connectTimeout: const Duration(seconds: 25),
      receiveTimeout: const Duration(seconds: 25),
    ),
  );
  void initialSettings() {
    final interceptors = dio.interceptors;
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.headers['Authorization'] = 'Bearer ${AppUrl.gptApiKey}';

          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          return handler.next(e);
        },
      ),
    );
    interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ),
    );
  }
}
