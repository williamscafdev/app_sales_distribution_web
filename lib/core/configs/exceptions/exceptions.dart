import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
class CException with _$CException {
  @Implements<Exception>()
  const factory CException.cacheException({
    @Default('cacheException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = CacheException;
  @Implements<Exception>()
  const factory CException.conflictException({
    @Default('conflictException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = ConflictException;
  @Implements<Exception>()
  const factory CException.connectTimeOutException({
    @Default('connectTimeOutException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = ConnectTimeOutException;
  @Implements<Exception>()
  const factory CException.parametersException({
    @Default('parametersException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = ParametersException;
  @Implements<Exception>()
  const factory CException.internalServerErrorException({
    @Default('internalServerErrorException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = InternalServerErrorException;
  @Implements<Exception>()
  const factory CException.invalidCredentialsException({
    @Default('invalidCredentialsException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = InvalidCredentialsException;
  @Implements<Exception>()
  const factory CException.localException({
    @Default('localException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = LocalException;
  @Implements<Exception>()
  const factory CException.networkConnectionException({
    @Default('networkConnectionException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = NetworkConnectionException;
  @Implements<Exception>()
  const factory CException.notFoundException({
    @Default('notFoundException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = NotFoundException;
  @Implements<Exception>()
  const factory CException.othersException({
    @Default('othersException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = OthersException;
  @Implements<Exception>()
  const factory CException.parserErrorException({
    @Default('parserErrorException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = ParserErrorException;
  @Implements<Exception>()
  const factory CException.requestTimeOutException({
    @Default('requestTimeOutException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = RequestTimeOutException;
  @Implements<Exception>()
  const factory CException.serverCancelException({
    @Default('serverCancelException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = ServerCancelException;
  @Implements<Exception>()
  const factory CException.serverSocketException({
    @Default('serverSocketException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = ServerSocketException;
  @Implements<Exception>()
  const factory CException.serviceUnAvailableException({
    @Default('serviceUnAvailableException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = ServiceUnAvailableException;
  @Implements<Exception>()
  const factory CException.sessionExpiredException({
    @Default('sessionExpiredException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = SessionExpiredException;
  @Implements<Exception>()
  const factory CException.sessionNotFoundException({
    @Default('sessionNotFoundException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = SessionNotFoundException;
  @Implements<Exception>()
  const factory CException.undefinedException({
    @Default('undefinedException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = UndefinedException;
  @Implements<Exception>()
  const factory CException.undefinedOrUrlNotExistException({
    @Default('undefinedOrUrlNotExistException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = UndefinedOrUrlNotExistException;
  @Implements<Exception>()
  const factory CException.registerInvalidException({
    @Default('registerInvalidException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = RegisterInvalidException;
  @Implements<Exception>()
  const factory CException.emptyDataException({
    @Default('emptyDataException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = EmptyDataException;
  @Implements<Exception>()
  const factory CException.businessErrorException({
    @Default('businessErrorException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = BusinessErrorException;
  @Implements<Exception>()
  const factory CException.userNotFoundAWSException({
    @Default('userNotFoundAWSException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = UserNotFoundAWSException;
  @Implements<Exception>()
  const factory CException.notAuthorizedAWSException({
    @Default('notAuthorizedAWSException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = NotAuthorizedAWSException;
  @Implements<Exception>()
  const factory CException.passwordResetRequiredAWSException({
    @Default('passwordResetRequiredAWSException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = PasswordResetRequiredAWSException;
  @Implements<Exception>()
  const factory CException.userNotConfirmedAWSException({
    @Default('userNotConfirmedAWSException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = UserNotConfirmedAWSException;
  @Implements<Exception>()
  const factory CException.codeMismatchAWSException({
    @Default('codeMismatchAWSException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = CodeMismatchAWSException;
  @Implements<Exception>()
  const factory CException.codeExpiredAWSException({
    @Default('expiredCodeAWSException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = CodeExpiredAWSException;
  @Implements<Exception>()
  const factory CException.invalidParameterAWSException({
    @Default('invalidParameterAWSException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = InvalidParameterAWSException;
  @Implements<Exception>()
  const factory CException.invalidPasswordAWSException({
    @Default('invalidPasswordAWSException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = InvalidPasswordAWSException;
  @Implements<Exception>()
  const factory CException.tooManyFailedAttemptsAWSException({
    @Default('tooManyFailedAttemptsAWSException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = TooManyFailedAttemptsAWSException;
  @Implements<Exception>()
  const factory CException.tooManyRequestsAWSException({
    @Default('tooManyRequestsAWSException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = TooManyRequestsAWSException;
  @Implements<Exception>()
  const factory CException.limitExceededAWSException({
    @Default('limitExceededAWSException') String? message,
    StackTrace? stackTrace,
    dynamic error,
    @Default(true) bool? report,
  }) = LimitExceededAWSException;
}
