// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_sales_distribution_web/presentation/base/view/base_screen.dart'
    as _i2;
import 'package:app_sales_distribution_web/presentation/login/view/login_screen.dart'
    as _i1;
import 'package:auto_route/auto_route.dart' as _i3;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LoginScreenRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginScreen(),
      );
    },
    BaseScreenRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BaseScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginScreen]
class LoginScreenRoute extends _i3.PageRouteInfo<void> {
  const LoginScreenRoute({List<_i3.PageRouteInfo>? children})
      : super(
          LoginScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreenRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BaseScreen]
class BaseScreenRoute extends _i3.PageRouteInfo<void> {
  const BaseScreenRoute({List<_i3.PageRouteInfo>? children})
      : super(
          BaseScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'BaseScreenRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
