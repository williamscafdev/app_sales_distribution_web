import 'dart:async';

import 'package:app_sales_distribution_web/core/core.dart';
import 'package:dio/dio.dart';

Future<Either<Failure, T>> futureDecorator<T>(
  Future<T> Function() callback,
) async {
  try {
    final result = await callback();
    return Either<Failure, T>.right(result);
  } on CException catch (e) {
    final err = e;

    return Either<Failure, T>.left(
      err.when(
        cacheException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            CacheFailure(message: message),
        conflictException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            ConflictFailure(message: message),
        connectTimeOutException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            ConnectionTimeoutFailure(message: message),
        parametersException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            ErrorParametersFailure(message: message),
        internalServerErrorException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            InternalServerErrorFailure(message: message),
        invalidCredentialsException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            InvalidCredentialFailure(message: message),
        localException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            LocalFailure(message: message),
        networkConnectionException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            NetworkConnectionFailure(message: message),
        notFoundException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            NotFoundFailure(message: message),
        othersException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            OthersFailure(message: message),
        parserErrorException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            ParserErrorFailure(message: message),
        requestTimeOutException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            RequestTimeOutFailure(message: message),
        serverCancelException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            ServerCancelFailure(message: message),
        serverSocketException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            ServerSocketFailure(message: message),
        serviceUnAvailableException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            ServiceUnAvailableFailure(message: message),
        sessionExpiredException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            SessionExpiredFailure(message: message),
        sessionNotFoundException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            SessionNotFoundFailure(message: message),
        undefinedException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            UndefinedFailure(message: message),
        undefinedOrUrlNotExistException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            UndefinedOrUrlNotExistFailure(message: message),
        registerInvalidException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            RegisterInvalidFailure(message: message),
        emptyDataException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            EmptyDataFailure(message: message),
        businessErrorException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            BusinessErrorFailure(message: message),
        userNotFoundAWSException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            UserNotFoundAWSFailure(message: message),
        notAuthorizedAWSException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            NotAuthorizedAWSFailure(message: message),
        passwordResetRequiredAWSException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            PasswordResetRequiredAWSFailure(message: message),
        userNotConfirmedAWSException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            UserNotConfirmedAWSFailure(message: message),
        codeMismatchAWSException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            CodeMismatchAWSFailure(message: message),
        codeExpiredAWSException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            CodeExpiredAWSFailure(message: message),
        invalidParameterAWSException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            InvalidParameterAWSFailure(message: message),
        invalidPasswordAWSException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            InvalidPasswordAWSFailure(message: message),
        tooManyFailedAttemptsAWSException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            TooManyFailedAttemptsAWSFailure(message: message),
        tooManyRequestsAWSException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            TooManyRequestsAWSFailure(message: message),
        limitExceededAWSException: (
          String? message,
          StackTrace? stackTrace,
          dynamic error,
          bool? report,
        ) =>
            LimitExceededAWSFailure(message: message),
      ),
    );
  }
}

extension ApiDecorator on Dio {
  Future<Response<dynamic>> getDecorator(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      final result = await get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      if (result.statusCode == 200 || result.data != null) {
        return result;
      } else {
        switch (result.statusCode) {
          case 400:
          case 401:
          case 403:
            throw const InvalidCredentialsException();
          case 404:
            throw const NotFoundException();
          case 409:
            throw const ConflictException();
          case 408:
            throw const RequestTimeOutException();
          case 500:
            throw InternalServerErrorException(message: result.data.toString());
          case 503:
          case 504:
            throw const ServiceUnAvailableException();
          default:
            throw const UndefinedOrUrlNotExistException();
        }
      }
    } on DioException catch (dioError) {
      switch (dioError.type) {
        case DioExceptionType.connectionTimeout:
          throw const NetworkConnectionException();
        case DioExceptionType.receiveTimeout:
          throw const ConnectTimeOutException();
        case DioExceptionType.cancel:
          throw const ServerCancelException();
        case DioExceptionType.badResponse:
          final exp = RegExp(r'(\d{3})');
          final codeError = exp.stringMatch(
                dioError.error != null ? dioError.error.toString() : '',
              ) ??
              '';
          if (codeError != '') {
            switch (int.parse(codeError)) {
              case 400:
              case 401:
              case 403:
                throw const InvalidCredentialsException();
              case 422:
                throw BusinessErrorException(
                  message:
                      dioError.response!.data['error']['message'][0].toString(),
                );
              case 404:
                throw const NotFoundException();
              case 409:
                throw const ConflictException();
              case 408:
                throw const RequestTimeOutException();
              case 500:
                throw const InternalServerErrorException();
              case 503:
              case 504:
                throw const ServiceUnAvailableException();
              default:
                throw ParserErrorException(
                  message: dioError.response!.data.toString(),
                );
            }
          }
          throw ParserErrorException(
            message: dioError.response!.data.toString(),
          );
        case DioExceptionType.sendTimeout:
          throw const ServerSocketException();
        case DioExceptionType.badCertificate:
          throw const OthersException();
        case DioExceptionType.connectionError:
          throw const OthersException();
        case DioExceptionType.unknown:
          throw const OthersException();
      }
    }
  }

  Future<Response<dynamic>> postDecorator(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      final result = await post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if (result.statusCode == 200 || result.data != null) {
        return result;
      } else {
        switch (result.statusCode) {
          case 400:
          case 401:
          case 403:
            throw const InvalidCredentialsException();
          case 404:
            throw const NotFoundException();
          case 409:
            throw const ConflictException();
          case 408:
            throw const RequestTimeOutException();
          case 500:
            throw InternalServerErrorException(message: result.data.toString());
          case 503:
          case 504:
            throw const ServiceUnAvailableException();
          default:
            throw const UndefinedOrUrlNotExistException();
        }
      }
    } on DioException catch (dioError) {
      switch (dioError.type) {
        case DioExceptionType.connectionTimeout:
          throw const NetworkConnectionException();
        case DioExceptionType.receiveTimeout:
          throw const ConnectTimeOutException();
        case DioExceptionType.cancel:
          throw const ServerCancelException();
        case DioExceptionType.badResponse:
          final exp = RegExp(r'(\d{3})');
          final codeError = exp.stringMatch(
                dioError.error != null ? dioError.error.toString() : '',
              ) ??
              '';
          if (codeError != '') {
            switch (int.parse(codeError)) {
              case 400:
              case 401:
              case 403:
                throw const InvalidCredentialsException();
              case 422:
                throw BusinessErrorException(
                  message: dioError.response!.data.toString(),
                );
              case 404:
                throw const NotFoundException();
              case 409:
                throw const ConflictException();
              case 408:
                throw const RequestTimeOutException();
              case 500:
                throw const InternalServerErrorException();
              case 503:
              case 504:
                throw const ServiceUnAvailableException();
              default:
                throw ParserErrorException(
                  message: dioError.response!.data.toString(),
                );
            }
          }
          throw ParserErrorException(
            message: dioError.response!.data.toString(),
          );
        case DioExceptionType.sendTimeout:
          throw const ServerSocketException();
        case DioExceptionType.badCertificate:
          throw const OthersException();
        case DioExceptionType.connectionError:
          throw const OthersException();
        case DioExceptionType.unknown:
          throw const OthersException();
      }
    }
  }

  Future<Response<dynamic>> putDecorator(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      final result = await put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if (result.statusCode == 200 || result.data != null) {
        return result;
      } else {
        switch (result.statusCode) {
          case 400:
          case 401:
          case 403:
            throw const InvalidCredentialsException();
          case 404:
            throw const NotFoundException();
          case 409:
            throw const ConflictException();
          case 408:
            throw const RequestTimeOutException();
          case 500:
            throw InternalServerErrorException(message: result.data.toString());
          case 503:
          case 504:
            throw const ServiceUnAvailableException();
          default:
            throw const UndefinedOrUrlNotExistException();
        }
      }
    } on DioException catch (dioError) {
      switch (dioError.type) {
        case DioExceptionType.connectionTimeout:
          throw const NetworkConnectionException();
        case DioExceptionType.receiveTimeout:
          throw const ConnectTimeOutException();
        case DioExceptionType.cancel:
          throw const ServerCancelException();
        case DioExceptionType.badResponse:
          final exp = RegExp(r'(\d{3})');
          final codeError = exp.stringMatch(
                dioError.error != null ? dioError.error.toString() : '',
              ) ??
              '';
          if (codeError != '') {
            switch (int.parse(codeError)) {
              case 400:
              case 401:
              case 403:
                throw const InvalidCredentialsException();
              case 422:
                throw BusinessErrorException(
                  message: dioError.response!.data.toString(),
                );
              case 404:
                throw const NotFoundException();
              case 409:
                throw const ConflictException();
              case 408:
                throw const RequestTimeOutException();
              case 500:
                throw const InternalServerErrorException();
              case 503:
              case 504:
                throw const ServiceUnAvailableException();
              default:
                throw ParserErrorException(
                  message: dioError.response!.data.toString(),
                );
            }
          }
          throw ParserErrorException(
            message: dioError.response!.data.toString(),
          );
        case DioExceptionType.sendTimeout:
          throw const ServerSocketException();
        case DioExceptionType.badCertificate:
          throw const OthersException();
        case DioExceptionType.connectionError:
          throw const OthersException();
        case DioExceptionType.unknown:
          throw const OthersException();
      }
    }
  }

  Future<Response<dynamic>> patchDecorator(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      final result = await patch(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if (result.statusCode == 200 || result.data != null) {
        return result;
      } else {
        switch (result.statusCode) {
          case 400:
          case 401:
          case 403:
            throw const InvalidCredentialsException();
          case 404:
            throw const NotFoundException();
          case 409:
            throw const ConflictException();
          case 408:
            throw const RequestTimeOutException();
          case 500:
            throw InternalServerErrorException(message: result.data.toString());
          case 503:
          case 504:
            throw const ServiceUnAvailableException();
          default:
            throw const UndefinedOrUrlNotExistException();
        }
      }
    } on DioException catch (dioError) {
      switch (dioError.type) {
        case DioExceptionType.connectionTimeout:
          throw const NetworkConnectionException();
        case DioExceptionType.receiveTimeout:
          throw const ConnectTimeOutException();
        case DioExceptionType.cancel:
          throw const ServerCancelException();
        case DioExceptionType.badResponse:
          final exp = RegExp(r'(\d{3})');
          final codeError = exp.stringMatch(
                dioError.error != null ? dioError.error.toString() : '',
              ) ??
              '';
          if (codeError != '') {
            switch (int.parse(codeError)) {
              case 400:
              case 401:
              case 403:
                throw const InvalidCredentialsException();
              case 422:
                throw BusinessErrorException(
                  message: dioError.response!.data.toString(),
                );
              case 404:
                throw const NotFoundException();
              case 409:
                throw const ConflictException();
              case 408:
                throw const RequestTimeOutException();
              case 500:
                throw const InternalServerErrorException();
              case 503:
              case 504:
                throw const ServiceUnAvailableException();
              default:
                throw ParserErrorException(
                  message: dioError.response!.data.toString(),
                );
            }
          }
          throw ParserErrorException(
            message: dioError.response!.data.toString(),
          );
        case DioExceptionType.sendTimeout:
          throw const ServerSocketException();
        case DioExceptionType.badCertificate:
          throw const OthersException();
        case DioExceptionType.connectionError:
          throw const OthersException();
        case DioExceptionType.unknown:
          throw const OthersException();
      }
    }
  }

  Future<Response<dynamic>> deleteDecorator(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      final result = await delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      if (result.statusCode == 200 || result.data != null) {
        return result;
      } else {
        switch (result.statusCode) {
          case 400:
          case 401:
          case 403:
            throw const InvalidCredentialsException();
          case 404:
            throw const NotFoundException();
          case 409:
            throw const ConflictException();
          case 408:
            throw const RequestTimeOutException();
          case 500:
            throw InternalServerErrorException(message: result.data.toString());
          case 503:
          case 504:
            throw const ServiceUnAvailableException();
          default:
            throw const UndefinedOrUrlNotExistException();
        }
      }
    } on DioException catch (dioError) {
      switch (dioError.type) {
        case DioExceptionType.connectionTimeout:
          throw const NetworkConnectionException();
        case DioExceptionType.receiveTimeout:
          throw const ConnectTimeOutException();
        case DioExceptionType.cancel:
          throw const ServerCancelException();
        case DioExceptionType.badResponse:
          final exp = RegExp(r'(\d{3})');
          final codeError = exp.stringMatch(
                dioError.error != null ? dioError.error.toString() : '',
              ) ??
              '';
          if (codeError != '') {
            switch (int.parse(codeError)) {
              case 400:
              case 401:
              case 403:
                throw const InvalidCredentialsException();
              case 422:
                throw BusinessErrorException(
                  message:
                      dioError.response!.data['error']['message'][0].toString(),
                );
              case 404:
                throw const NotFoundException();
              case 409:
                throw const ConflictException();
              case 408:
                throw const RequestTimeOutException();
              case 500:
                throw const InternalServerErrorException();
              case 503:
              case 504:
                throw const ServiceUnAvailableException();
              default:
                throw ParserErrorException(
                  message:
                      dioError.response!.data['error']['message'][0].toString(),
                );
            }
          }
          throw ParserErrorException(
            message: dioError.response!.data['error']['message'][0].toString(),
          );
        case DioExceptionType.sendTimeout:
          throw const ServerSocketException();
        case DioExceptionType.badCertificate:
          throw const OthersException();
        case DioExceptionType.connectionError:
          throw const OthersException();
        case DioExceptionType.unknown:
          throw const OthersException();
      }
    }
  }
}
