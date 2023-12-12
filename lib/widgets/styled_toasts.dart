import 'package:ai_photo1/main.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppSnackBars {
  static void showErrorSnackBar(String text) {
    scaffoldKey.currentState?.showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        elevation: 0,
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFFF1100),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: AppTextStyles.s16W400(color: Colors.white),
          ),
        ),
      ),
    );
  }

  static void showSuccessSnackBar(String text, {int seconds = 2}) {
    scaffoldKey.currentState?.showSnackBar(
      SnackBar(
        duration: Duration(seconds: seconds),
        elevation: 0,
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF026405),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: AppTextStyles.s16W400(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
