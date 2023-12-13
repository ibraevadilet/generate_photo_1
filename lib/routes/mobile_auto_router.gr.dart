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
import 'package:ai_photo1/features/generate/model/generate_model.dart' as _i12;
import 'package:ai_photo1/features/home/home_detail_screen.dart' as _i5;
import 'package:ai_photo1/features/on_boarding/on_boarding_screen.dart' as _i6;
import 'package:ai_photo1/features/splash/splash_screen.dart' as _i7;
import 'package:ai_photo1/features/subscription/subscription_screen.dart'
    as _i8;
import 'package:ai_photo1/features/web_view/web_view_screen.dart' as _i9;
import 'package:ai_photo1/widgets/bottom_naviator_screen.dart' as _i2;
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    BottomNavigatorRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BottomNavigatorScreen(),
      );
    },
    GenerateAndOnBoardingRoute.name: (routeData) {
      final args = routeData.argsAs<GenerateAndOnBoardingRouteArgs>(
          orElse: () => const GenerateAndOnBoardingRouteArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.GenerateAndOnBoardingScreen(
          key: args.key,
          isFromAuth: args.isFromAuth,
        ),
      );
    },
    GenerateResultRoute.name: (routeData) {
      final args = routeData.argsAs<GenerateResultRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.GenerateResultScreen(
          key: args.key,
          image: args.image,
          promt: args.promt,
          style: args.style,
        ),
      );
    },
    HomeDetailRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.HomeDetailScreen(
          key: args.key,
          model: args.model,
          eye: args.eye,
          likeCount: args.likeCount,
          isLiked: args.isLiked,
        ),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnBoardingScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SplashScreen(),
      );
    },
    SubscriptionRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SubscriptionScreen(),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.WebViewScreen(
          key: args.key,
          title: args.title,
          url: args.url,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i10.PageRouteInfo<void> {
  const AuthRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BottomNavigatorScreen]
class BottomNavigatorRoute extends _i10.PageRouteInfo<void> {
  const BottomNavigatorRoute({List<_i10.PageRouteInfo>? children})
      : super(
          BottomNavigatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigatorRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.GenerateAndOnBoardingScreen]
class GenerateAndOnBoardingRoute
    extends _i10.PageRouteInfo<GenerateAndOnBoardingRouteArgs> {
  GenerateAndOnBoardingRoute({
    _i11.Key? key,
    bool isFromAuth = false,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          GenerateAndOnBoardingRoute.name,
          args: GenerateAndOnBoardingRouteArgs(
            key: key,
            isFromAuth: isFromAuth,
          ),
          initialChildren: children,
        );

  static const String name = 'GenerateAndOnBoardingRoute';

  static const _i10.PageInfo<GenerateAndOnBoardingRouteArgs> page =
      _i10.PageInfo<GenerateAndOnBoardingRouteArgs>(name);
}

class GenerateAndOnBoardingRouteArgs {
  const GenerateAndOnBoardingRouteArgs({
    this.key,
    this.isFromAuth = false,
  });

  final _i11.Key? key;

  final bool isFromAuth;

  @override
  String toString() {
    return 'GenerateAndOnBoardingRouteArgs{key: $key, isFromAuth: $isFromAuth}';
  }
}

/// generated route for
/// [_i4.GenerateResultScreen]
class GenerateResultRoute extends _i10.PageRouteInfo<GenerateResultRouteArgs> {
  GenerateResultRoute({
    _i11.Key? key,
    required String image,
    required String promt,
    required String style,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          GenerateResultRoute.name,
          args: GenerateResultRouteArgs(
            key: key,
            image: image,
            promt: promt,
            style: style,
          ),
          initialChildren: children,
        );

  static const String name = 'GenerateResultRoute';

  static const _i10.PageInfo<GenerateResultRouteArgs> page =
      _i10.PageInfo<GenerateResultRouteArgs>(name);
}

class GenerateResultRouteArgs {
  const GenerateResultRouteArgs({
    this.key,
    required this.image,
    required this.promt,
    required this.style,
  });

  final _i11.Key? key;

  final String image;

  final String promt;

  final String style;

  @override
  String toString() {
    return 'GenerateResultRouteArgs{key: $key, image: $image, promt: $promt, style: $style}';
  }
}

/// generated route for
/// [_i5.HomeDetailScreen]
class HomeDetailRoute extends _i10.PageRouteInfo<HomeDetailRouteArgs> {
  HomeDetailRoute({
    _i11.Key? key,
    required _i12.PhotoModel model,
    required int eye,
    required int likeCount,
    required bool isLiked,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          HomeDetailRoute.name,
          args: HomeDetailRouteArgs(
            key: key,
            model: model,
            eye: eye,
            likeCount: likeCount,
            isLiked: isLiked,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeDetailRoute';

  static const _i10.PageInfo<HomeDetailRouteArgs> page =
      _i10.PageInfo<HomeDetailRouteArgs>(name);
}

class HomeDetailRouteArgs {
  const HomeDetailRouteArgs({
    this.key,
    required this.model,
    required this.eye,
    required this.likeCount,
    required this.isLiked,
  });

  final _i11.Key? key;

  final _i12.PhotoModel model;

  final int eye;

  final int likeCount;

  final bool isLiked;

  @override
  String toString() {
    return 'HomeDetailRouteArgs{key: $key, model: $model, eye: $eye, likeCount: $likeCount, isLiked: $isLiked}';
  }
}

/// generated route for
/// [_i6.OnBoardingScreen]
class OnBoardingRoute extends _i10.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i10.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SplashScreen]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SubscriptionScreen]
class SubscriptionRoute extends _i10.PageRouteInfo<void> {
  const SubscriptionRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.WebViewScreen]
class WebViewRoute extends _i10.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    _i11.Key? key,
    required String title,
    required String url,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          WebViewRoute.name,
          args: WebViewRouteArgs(
            key: key,
            title: title,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'WebViewRoute';

  static const _i10.PageInfo<WebViewRouteArgs> page =
      _i10.PageInfo<WebViewRouteArgs>(name);
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    this.key,
    required this.title,
    required this.url,
  });

  final _i11.Key? key;

  final String title;

  final String url;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, title: $title, url: $url}';
  }
}
