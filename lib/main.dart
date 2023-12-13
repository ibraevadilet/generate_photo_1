import 'package:ai_photo1/firebase_options.dart';
import 'package:ai_photo1/routes/mobile_auto_router.dart';
import 'package:ai_photo1/theme/app_theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
final appRouter = AppRouter();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(appRouter),
      routeInformationProvider: appRouter.routeInfoProvider(),
    );
  }
}
