import 'package:app_sales_distribution_web/core/configs/exceptions/failure.dart';
import 'package:app_sales_distribution_web/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_object.freezed.dart';

@freezed
class ErrorObject with _$ErrorObject {
  const factory ErrorObject({
    required String title,
    required String message,
  }) = _ErrorObject;

  factory ErrorObject.mapFailureToErrorObject({
    required Failure failure,
  }) {
    return failure.when(
      cacheFailure: (String? message) => ErrorObject(
        title: 'LOCAL_STORAGE_FAILURE',
        message: message ?? 'Some error happened into memory cache',
      ),
      conflictFailure: (String? message) => ErrorObject(
        title: 'CONFLICT_DATA',
        message: message ?? 'Some error happened into data memory',
      ),
      connectionTimeoutFailure: (String? message) => ErrorObject(
        title: 'NETWORK_TIMEOUT',
        message: message ?? 'Some error happened into network timeout',
      ),
      errorParametersFailure: (String? message) => ErrorObject(
        title: 'PARAMETERS_REQUEST',
        message: message ?? 'Some error happened into parameters request',
      ),
      internalServerErrorFailure: (String? message) => ErrorObject(
        title: 'INTERNAL_SERVER_ERROR',
        message: message ?? 'Some error happened into internal server error',
      ),
      invalidCredentialFailure: (String? message) => ErrorObject(
        title: 'INVALID_CREDENTIAL',
        message: message ?? 'Some error happened into invalid credential',
      ),
      localFailure: (String? message) => ErrorObject(
        title: 'LOCAL_STORAGE',
        message: message ?? 'Some error happened into local storage',
      ),
      networkConnectionFailure: (String? message) => ErrorObject(
        title: 'NETWORK_CONNECTION',
        message: message ?? 'Some error happened into network connection',
      ),
      notFoundFailure: (String? message) => ErrorObject(
        title: 'NOT_FOUND',
        message: message ?? 'Error not found',
      ),
      othersFailure: (String? message) => ErrorObject(
        title: 'OTHER_ERROR',
        message: message ?? 'Unknown error',
      ),
      parserErrorFailure: (String? message) => ErrorObject(
        title: 'PARSER_DATA',
        message: message ?? 'Some error happened into parser data',
      ),
      requestTimeOutFailure: (String? message) => ErrorObject(
        title: 'REQUEST_TIMEOUT',
        message: message ?? 'Some error happened into request timeout',
      ),
      serverCancelFailure: (String? message) => ErrorObject(
        title: 'SERVER_CANCEL',
        message: message ?? 'Some error happened into server cancel',
      ),
      serverSocketFailure: (String? message) => ErrorObject(
        title: 'SERVER_SOCKET',
        message: message ?? 'Some error happened into server socket',
      ),
      serviceUnAvailableFailure: (String? message) => ErrorObject(
        title: 'SERVICES_UNAVAILABLE',
        message: message ?? 'Some error happened into services unavailable',
      ),
      sessionExpiredFailure: (String? message) => ErrorObject(
        title: 'SESSION_EXPIRED',
        message: message ?? 'Some error happened into session expired',
      ),
      sessionNotFoundFailure: (String? message) => ErrorObject(
        title: 'SESSION_NOT_FOUND',
        message: message ?? 'Some error happened into session not found',
      ),
      undefinedFailure: (String? message) => ErrorObject(
        title: 'UNDEFINED_ERROR',
        message: message ?? '',
      ),
      undefinedOrUrlNotExistFailure: (String? message) => ErrorObject(
        title: 'UNDEFINED_OR_URL_NOT_EXIST',
        message:
            message ?? 'Some error happened into undefined or url not exist',
      ),
      registerInvalidFailure: (String? message) => ErrorObject(
        title: 'REGISTER_INVALID',
        message: message ?? 'Some error happened into register invalid',
      ),
      emptyDataFailure: (String? message) => ErrorObject(
        title: 'EMPTY_DATA',
        message: message ?? 'Some error happened into empty data',
      ),
      businessErrorFailure: (String? message) => ErrorObject(
        title: 'BUSINESS_ERROR',
        message: message ?? 'Some error happened into business error',
      ),
      userNotFoundAWSFailure: (String? message) => ErrorObject(
        title: 'USER_NOT_FOUND_AWS',
        message: message ?? 'Some error happened into user not found',
      ),
      notAuthorizedAWSFailure: (String? message) => ErrorObject(
        title: 'NOT_AUTHORIZED_AWS',
        message: message ?? 'Some error happened into user not found',
      ),
      passwordResetRequiredAWSFailure: (String? message) => ErrorObject(
        title: 'PASSWORD_RESET_REQUIRED_AWS',
        message: message ?? 'Some error happened into user not found',
      ),
      userNotConfirmedAWSFailure: (String? message) => ErrorObject(
        title: 'USER_NOT_CONFIRMED_AWS',
        message: message ?? 'Some error happened into user not found',
      ),
      codeMismatchAWSFailure: (String? message) => ErrorObject(
        title: 'CODE_MISMATCH_AWS',
        message: message ?? 'Some error happened into user not found',
      ),
      codeExpiredAWSFailure: (String? message) => ErrorObject(
        title: 'CODE_EXPIRED_AWS',
        message: message ?? 'Some error happened into user not found',
      ),
      invalidParameterAWSFailure: (String? message) => ErrorObject(
        title: 'INVALID_PARAMETER_AWS',
        message: message ?? 'Some error happened into user not found',
      ),
      invalidPasswordAWSFailure: (String? message) => ErrorObject(
        title: 'INVALID_PASSWORD_AWS',
        message: message ?? 'Some error happened into user not found',
      ),
      tooManyFailedAttemptsAWSFailure: (String? message) => ErrorObject(
        title: 'TOO_MANY_FAILED_ATTEMPTS_AWS',
        message: message ?? 'Some error happened into user not found',
      ),
      tooManyRequestsAWSFailure: (String? message) => ErrorObject(
        title: 'TOO_MANY_REQUESTS_AWS',
        message: message ?? 'Some error happened into user not found',
      ),
      limitExceededAWSFailure: (String? message) => ErrorObject(
        title: 'LIMIT_EXCEEDED_AWS',
        message: message ?? 'Some error happened into user not found',
      ),
    );
  }
}
