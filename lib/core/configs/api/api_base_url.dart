import 'package:flutter_dotenv/flutter_dotenv.dart';

enum ApiBaseUrl {
  prod,
}

enum EnvironmentApp {
  dev,
  prod,
  mock,
}

class EnvironmentConfig {
  static final Map<EnvironmentApp, Map<String, dynamic>> _config = {
    EnvironmentApp.dev: {
      'baseUrl': dotenv.get('API_BASE_PATH'),
    },
    EnvironmentApp.prod: {
      'baseUrl': dotenv.get('API_BASE_PATH'),
    },
    EnvironmentApp.mock: {
      'baseUrl': dotenv.get('API_BASE_PATH'),
    },
  };

  static EnvironmentApp _currentEnvironment = EnvironmentApp.prod;

  static void setEnvironment(EnvironmentApp env) {
    _currentEnvironment = env;
  }

  static String get apiBaseUrl =>
      _config[_currentEnvironment]!['baseUrl'] as String;

  static Map<ApiBaseUrl, String> get apiBaseUrlMap => {
        ApiBaseUrl.prod: apiBaseUrl,
      };
}
