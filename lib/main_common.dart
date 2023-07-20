import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:app_sales_distribution_web/app.dart';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'core/core.dart';

void mainCommon(EnvironmentApp env) {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      DartPluginRegistrant.ensureInitialized();
      //di.configureDependencies(env);
      await dotenv.load();
      //await HiveProvider.initializeHive();

      runApp(
        const MyApp(),
      );
    },
    (e, s) => log(
      'RunZonedGuarded',
      error: e,
      stackTrace: s,
    ),
  );
}
