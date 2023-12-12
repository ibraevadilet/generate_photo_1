import 'package:ai_photo1/core/constants/app_test_constants.dart';
import 'package:ai_photo1/core/functions/push_router_func.dart';
import 'package:ai_photo1/core/images/app_images.dart';
import 'package:ai_photo1/routes/mobile_auto_router.gr.dart';
import 'package:ai_photo1/widgets/shared_pref_settings.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goNextPage();
    super.initState();
  }

  goNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    final name = await SharedSettings.getString(AppTextConstants.name);

    if (name == null) {
      AppRouting.pushAndPopUntilFunction(const AuthRoute());
    } else {
      AppRouting.pushAndPopUntilFunction(const SubscriptionRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(120),
          child: Image.asset(
            AppImages.pngwing,
          ),
        ),
      ),
    );
  }
}
