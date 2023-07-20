import 'package:app_sales_distribution_web/core/configs/api/api_base_url.dart';
import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';

class Api {
  Api._();
  static final Api _instance = Api._();
  static Dio get dio => _instance._dio;

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: EnvironmentConfig.apiBaseUrl,
      connectTimeout: const Duration(minutes: 10),
      receiveTimeout: const Duration(minutes: 10),
    ),
  )
    ..interceptors.add(
      InterceptorsWrapper(
        onRequest: SessionInterceptor().onRequest,
        onResponse: ResponseInterceptor().onResponse,
        onError: ErrorSessionInterceptor().onError,
      ),
    )
    ..interceptors.add(AwesomeDioInterceptor());
}

class ResponseInterceptor extends Interceptor {
  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) =>
      handler.next(response);
}

class SessionInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
/*       final failureOrToken = await sl<GetConfiguration>().call();

      failureOrToken.when(
        left: Either.left,
        right: (data) {
          options.headers['Authorization'] = 'Agros ${data.token}';
        },
      ); */

      handler.next(options);
    } on Exception catch (e) {
      handler.reject(
        DioException(
          requestOptions: options,
          error: e,
        ),
      );
    }
  }
}

class ErrorSessionInterceptor extends Interceptor {
  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    try {
      /*   if (err.response?.statusCode == 401) {
        final failureOrRefreshToken = await sl<GetRefreshToken>().call();
        failureOrRefreshToken.when(
          left: Either.left,
          right: (token) => EasyDebounce.debounce(
            'debounce_refresh_token',
            const Duration(milliseconds: 1000),
            () => sendNewRequest(
              err,
              handler,
              token,
            ),
          ),
        );
      } else {
        handler.next(err);
      } */
      handler.next(err);
    } on Exception catch (e) {
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: e,
        ),
      );
    }
  }
}

Future<void> sendNewRequest(
  DioException err,
  ErrorInterceptorHandler handler,
  String token,
) async {
  try {
    final newResponse = await Api.dio.request(
      err.requestOptions.path,
      cancelToken: err.requestOptions.cancelToken,
      data: err.requestOptions.data,
      onReceiveProgress: err.requestOptions.onReceiveProgress,
      onSendProgress: err.requestOptions.onSendProgress,
      queryParameters: err.requestOptions.queryParameters,
      options: Options(
        method: err.requestOptions.method,
        headers: {
          'Authorization': 'Agros $token',
        },
      ),
    );
    handler.resolve(newResponse);
  } on DioException catch (e) {
    handler.reject(e);
  }
}
