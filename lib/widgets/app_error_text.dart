import 'package:ai_photo1/theme/app_colors.dart';
import 'package:ai_photo1/widgets/custom_button.dart';
import 'package:ai_photo1/widgets/spaces.dart';
import 'package:flutter/material.dart';

class AppErrorText extends StatelessWidget {
  const AppErrorText({
    required this.error,
    this.onPress,
    Key? key,
  }) : super(key: key);
  final String error;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        width: context.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              error,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            onPress != null
                ? CustomButton(
                    color: AppColors.purple5B575D,
                    width: null,
                    text: 'Повторить',
                    onPress: onPress!,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
