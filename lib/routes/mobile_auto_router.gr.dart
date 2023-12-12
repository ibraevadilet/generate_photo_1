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
import 'package:ai_photo1/features/splash/splash_screen.dart' as _i6;
import 'package:ai_photo1/widgets/bottom_naviator_screen.dart' as _i2;
import 'package:auto_route/auto_route.dart' as _i7;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    BottomNavigatorRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BottomNavigatorScreen(),
      );
    },
    GenerateAndOnBoardingRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.GenerateAndOnBoardingScreen(),
      );
    },
    GenerateResultRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.GenerateResultScreen(),
      );
    },
    HomeDetailRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeDetailScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i7.PageRouteInfo<void> {
  const AuthRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BottomNavigatorScreen]
class BottomNavigatorRoute extends _i7.PageRouteInfo<void> {
  const BottomNavigatorRoute({List<_i7.PageRouteInfo>? children})
      : super(
          BottomNavigatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigatorRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.GenerateAndOnBoardingScreen]
class GenerateAndOnBoardingRoute extends _i7.PageRouteInfo<void> {
  const GenerateAndOnBoardingRoute({List<_i7.PageRouteInfo>? children})
      : super(
          GenerateAndOnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'GenerateAndOnBoardingRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.GenerateResultScreen]
class GenerateResultRoute extends _i7.PageRouteInfo<void> {
  const GenerateResultRoute({List<_i7.PageRouteInfo>? children})
      : super(
          GenerateResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'GenerateResultRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeDetailScreen]
class HomeDetailRoute extends _i7.PageRouteInfo<void> {
  const HomeDetailRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeDetailRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SplashScreen]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
