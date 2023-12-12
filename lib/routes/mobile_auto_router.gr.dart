// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ai_photo1/features/auth/auth_screen.dart' as _i1;
import 'package:ai_photo1/features/generate/generate_result_screen.dart' as _i4;
import 'package:ai_photo1/features/generate/generate_screen.dart' as _i3;
import 'package:ai_photo1/features/home/home_detail_screen.dart' as _i5;
import 'package:ai_photo1/features/on_boarding/on_boarding_screen.dart' as _i6;
import 'package:ai_photo1/features/splash/splash_screen.dart' as _i7;
import 'package:ai_photo1/features/subscription/subscription_screen.dart'
    as _i8;
import 'package:ai_photo1/widgets/bottom_naviator_screen.dart' as _i2;
import 'package:auto_route/auto_route.dart' as _i9;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    BottomNavigatorRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BottomNavigatorScreen(),
      );
    },
    GenerateAndOnBoardingRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.GenerateAndOnBoardingScreen(),
      );
    },
    GenerateResultRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.GenerateResultScreen(),
      );
    },
    HomeDetailRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeDetailScreen(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnBoardingScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SplashScreen(),
      );
    },
    SubscriptionRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SubscriptionScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i9.PageRouteInfo<void> {
  const AuthRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BottomNavigatorScreen]
class BottomNavigatorRoute extends _i9.PageRouteInfo<void> {
  const BottomNavigatorRoute({List<_i9.PageRouteInfo>? children})
      : super(
          BottomNavigatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigatorRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.GenerateAndOnBoardingScreen]
class GenerateAndOnBoardingRoute extends _i9.PageRouteInfo<void> {
  const GenerateAndOnBoardingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          GenerateAndOnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'GenerateAndOnBoardingRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.GenerateResultScreen]
class GenerateResultRoute extends _i9.PageRouteInfo<void> {
  const GenerateResultRoute({List<_i9.PageRouteInfo>? children})
      : super(
          GenerateResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'GenerateResultRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeDetailScreen]
class HomeDetailRoute extends _i9.PageRouteInfo<void> {
  const HomeDetailRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeDetailRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnBoardingScreen]
class OnBoardingRoute extends _i9.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SplashScreen]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SubscriptionScreen]
class SubscriptionRoute extends _i9.PageRouteInfo<void> {
  const SubscriptionRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
