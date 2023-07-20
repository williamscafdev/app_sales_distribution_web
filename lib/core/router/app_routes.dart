part of 'router_provider.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginScreenRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: BaseScreenRoute.page,
        ),
      ];
}
