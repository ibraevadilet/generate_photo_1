import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'ProfileScreen',
        style: AppTextStyles.s32W700(
          color: Colors.white,
        ),
      ),
    );
  }
}
