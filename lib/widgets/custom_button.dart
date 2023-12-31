import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:ai_photo1/widgets/app_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.text,
    required this.color,
    required this.onPress,
    super.key,
    this.width = double.infinity,
    this.isFullFilled = true,
    this.isLoading = false,
    this.contentPadding = 14.0,
    this.aroundButtonPadding = EdgeInsets.zero,
    this.height = 56,
    this.radius = 12.0,
    this.textStyle,
    this.child,
    this.borderColor,
    this.textColor = Colors.white,
    this.gradient,
  });

  final double? width;
  final double height;
  final double contentPadding;
  final EdgeInsetsGeometry aroundButtonPadding;
  final Color color;
  final Color textColor;
  final Color? borderColor;
  final bool isFullFilled;
  final double radius;
  final bool isLoading;
  final TextStyle? textStyle;
  final String? text;
  final Function() onPress;
  final Widget? child;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: aroundButtonPadding,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: isLoading ? null : onPress,
        child: Container(
          alignment: Alignment.center,
          height: height,
          width: width,
          padding: EdgeInsets.all(contentPadding),
          decoration: BoxDecoration(
            gradient: gradient,
            color: color,
            borderRadius: BorderRadius.circular(radius),
            border: borderColor != null
                ? Border.all(color: borderColor!, width: 2)
                : null,
          ),
          child: isLoading
              ? const AppIndicator(color: Colors.white)
              : child ??
                  Text(
                    text!,
                    textAlign: TextAlign.center,
                    style: textStyle ??
                        AppTextStyles.s17W600(
                          color: textColor,
                        ),
                  ),
        ),
      ),
    );
  }
}
