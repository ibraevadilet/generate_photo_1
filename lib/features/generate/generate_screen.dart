import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class GenerateScreen extends StatelessWidget {
  const GenerateScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'GenerateScreen',
        style: AppTextStyles.s32W700(
          color: Colors.white,
        ),
      ),
    );
  }
}
