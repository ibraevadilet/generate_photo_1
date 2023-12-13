import 'package:ai_photo1/core/images/app_images.dart';
import 'package:ai_photo1/theme/app_colors.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:ai_photo1/widgets/spaces.dart';
import 'package:flutter/cupertino.dart';

class SelectPriceWidget extends StatelessWidget {
  const SelectPriceWidget({
    super.key,
    required this.isActive,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.onTap,
  });

  final bool isActive;
  final String title;
  final String subTitle;
  final double price;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.blackColor1B181C,
                borderRadius: BorderRadius.circular(12),
                border: isActive
                    ? Border.all(color: AppColors.purpleA106F4, width: 2)
                    : Border.all(color: AppColors.blackColor1B181C, width: 2),
              ),
              child: Container(
                height: 62,
                width: context.width,
                decoration: BoxDecoration(
                  color: AppColors.blackColor1B181C,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    Image.asset(
                      isActive ? AppImages.tru : AppImages.fal,
                      width: 25,
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: AppTextStyles.s16W700(),
                        ),
                        Text(
                          subTitle,
                          style: AppTextStyles.s12W400(),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      '\$$price',
                      style: AppTextStyles.s16W700(),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
