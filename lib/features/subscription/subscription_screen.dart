import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});
  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/subs.png'),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.withOpacity(0.8),
                  Colors.black,
                  Colors.black,
                  Colors.black,
                ],
              ),
            ),
          ),
          Positioned(
            top: 315,
            right: 30,
            left: 30,
            child: Text(
              'Create with AI Photo Generator',
              style: AppTextStyles.s32W700(),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
