import 'package:ai_photo1/routes/mobile_auto_router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(page: GenerateAndOnBoardingRoute.page),
        AutoRoute(page: HomeDetailRoute.page),
        AutoRoute(page: BottomNavigatorRoute.page),
        AutoRoute(page: GenerateResultRoute.page),
        AutoRoute(page: SubscriptionRoute.page),
      ];
}
