import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 20,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) => Container(
        color: Colors.amber,
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Text(
          'HomeScreen',
          style: AppTextStyles.s32W700(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
