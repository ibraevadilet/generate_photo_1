import 'package:ai_photo1/theme/app_colors.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class SizeWidget extends StatelessWidget {
  const SizeWidget(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.onTap});

  final String title;
  final bool isSelected;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            gradient: isSelected
                ? const LinearGradient(
                    colors: [
                      AppColors.purpleA106F4,
                      AppColors.purpleE707FA,
                    ],
                  )
                : const LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white,
                    ],
                  ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              title,
              style: AppTextStyles.s14W400(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
