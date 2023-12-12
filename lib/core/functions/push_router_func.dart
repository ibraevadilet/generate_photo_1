import 'package:ai_photo1/main.dart';
import 'package:auto_route/auto_route.dart';

class AppRouting {
  static pushFunction(PageRouteInfo<dynamic> route) async {
    await appRouter.push(route);
  }

  static pushAndPopUntilFunction(PageRouteInfo<dynamic> route) {
    appRouter.pushAndPopUntil(
      route,
      predicate: (route) => false,
    );
  }

  static popFunction({dynamic result}) {
    appRouter.pop(result);
  }
}
