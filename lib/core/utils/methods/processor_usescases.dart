import 'dart:developer';

import 'package:app_sales_distribution_web/core/core.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class Connectivity {
  static Future<bool> hasInternetConnection() async {
    final result = await InternetConnectionChecker().hasConnection;
    return result;
  }
}

Future<bool> processCases<Failure, T>({
  required List<Future<Either<Failure, T>> Function()> internetCase,
  required List<Future<Either<Failure, T>> Function()> noInternetCase,
  ProgressCaseCallback<bool>? progressCaseCallback,
}) async {
  final isConnected = await InternetConnectionChecker().hasConnection;
  try {
    Either<Failure, T>? result;
    final isError = <bool>[];

    if (isConnected) {
      for (final process in internetCase) {
        result = await process()
          ..when(
            left: (left) {
              isError.add(true);
            },
            right: (_) {
              isError.add(false);
            },
          );
      }
    } else {
      for (final process in noInternetCase) {
        result = await process()
          ..when(
            left: (left) {
              isError.add(true);
            },
            right: (_) {
              isError.add(false);
            },
          );
      }
    }
    log(result.toString());
    final error = isError.contains(true);
    progressCaseCallback?.call(error);
    return error;
  } catch (e) {
    progressCaseCallback?.call(true);
    return true;
  }
}

Future<Either<Failure, T>> processCasesOffline<Failure, T>({
  required List<Future<Either<Failure, T>> Function()> noInternetCase,
  ProgressCaseCallback<bool>? progressCaseCallback,
}) async {
  try {
    Either<Failure, T>? result;

    for (final process in noInternetCase) {
      result = await process();
    }
    return result!.map(
      left: (left) {
        progressCaseCallback?.call(true);
        return left;
      },
      right: (right) {
        progressCaseCallback?.call(false);
        return right;
      },
    );
  } catch (e) {
    progressCaseCallback?.call(true);
    return Either.left(e as Failure);
  }
}

typedef ProgressCallback = void Function(double progress);
typedef ProgressnNetworkCallback = void Function(bool network);
typedef ProgressCaseCallback<T> = void Function(T progress);

class T {}

Future<double?> loadProcessInformation<T>({
  required List<Future<T?> Function()> internetCase,
  ProgressCallback? progressCallback,
  ProgressnNetworkCallback? progressCallbackNetwork,
}) async {
  final isConnected = await InternetConnectionChecker().hasConnection;
  try {
    var index = 0.0;
    final totalProcess = internetCase.length;
    var progress = 0.0;
    if (isConnected) {
      for (final process in internetCase) {
        try {
          await process();
        } catch (e) {
          log(e.toString());
        }
        progress = index / totalProcess;
        index++;
        progressCallback?.call(progress);
      }
    } else {
      progressCallbackNetwork?.call(false);
    }
    return progress;
  } on Failure {
    return null;
  }
}

typedef ResponseCallback<T> = void Function(T response);
Future<void> loadProcessInformationLocal<T>({
  required List<Future<T?> Function()> notInternetCase,
  ResponseCallback? responseCallback,
}) async {
  try {
    T? result;
    for (final process in notInternetCase) {
      try {
        result = await process();
      } catch (e) {
        log(e.toString());
      }
      responseCallback?.call(result);
    }
  } on Failure {
    return;
  }
}
