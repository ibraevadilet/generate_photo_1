// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ai_photo1/features/auth/auth_screen.dart' as _i1;
import 'package:ai_photo1/features/on_boarding/on_boarding_screen.dart' as _i3;
import 'package:ai_photo1/features/splash/splash_screen.dart' as _i4;
import 'package:ai_photo1/features/subscription/subscription_screen.dart'
    as _i5;
import 'package:ai_photo1/widgets/bottom_naviator_screen.dart' as _i2;
import 'package:auto_route/auto_route.dart' as _i6;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    BottomNavigatorRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BottomNavigatorScreen(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OnBoardingScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SplashScreen(),
      );
    },
    SubscriptionRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SubscriptionScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i6.PageRouteInfo<void> {
  const AuthRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BottomNavigatorScreen]
class BottomNavigatorRoute extends _i6.PageRouteInfo<void> {
  const BottomNavigatorRoute({List<_i6.PageRouteInfo>? children})
      : super(
          BottomNavigatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigatorRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.OnBoardingScreen]
class OnBoardingRoute extends _i6.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i6.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SplashScreen]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SubscriptionScreen]
class SubscriptionRoute extends _i6.PageRouteInfo<void> {
  const SubscriptionRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
