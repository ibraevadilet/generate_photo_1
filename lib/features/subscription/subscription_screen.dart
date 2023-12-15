import 'package:ai_photo1/core/constants/app_url.dart';
import 'package:ai_photo1/core/purchase/check_restore.dart';
import 'package:ai_photo1/features/subscription/widgets/select_price_widget.dart';
import 'package:ai_photo1/theme/app_colors.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:ai_photo1/widgets/custom_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});
  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  List<String> productIds = [
    AppUrl.producId1,
    AppUrl.producId2,
    AppUrl.producId3,
  ];

  late String selectedId = productIds.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
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
              bottom: 0,
              right: 10,
              left: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Create with AI\nPhoto Generator',
                    style: AppTextStyles.s32W700(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  SelectPriceWidget(
                    isActive: selectedId == productIds[0],
                    title: 'Life time',
                    subTitle: 'Billed once',
                    price: 49.99,
                    onTap: () => setState(() => selectedId = productIds[0]),
                  ),
                  SelectPriceWidget(
                    isActive: selectedId == productIds[1],
                    title: '3 days free trial',
                    subTitle: 'Billed annually',
                    price: 29.99,
                    onTap: () => setState(() => selectedId = productIds[1]),
                  ),
                  SelectPriceWidget(
                    isActive: selectedId == productIds[2],
                    title: '7 days',
                    subTitle: 'Billed weekly',
                    price: 6.99,
                    onTap: () => setState(() => selectedId = productIds[2]),
                  ),
                  const SizedBox(height: 12),
                  CustomButton(
                    radius: 50,
                    color: Colors.white,
                    onPress: () async {
                      await AppRestore.buyProduct(selectedId);
                    },
                    text: 'Continue',
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.purpleA106F4,
                        AppColors.purpleE707FA,
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Privacy Policy',
                        style: AppTextStyles.s12W400(
                          color: AppColors.textColor5B575D,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        color: AppColors.textColor5B575D,
                        width: 2,
                        height: 10,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Term of Use',
                        style: AppTextStyles.s12W400(
                          color: AppColors.textColor5B575D,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        color: AppColors.textColor5B575D,
                        width: 2,
                        height: 10,
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          AppRestore.showRestoreDoalog(context);
                        },
                        child: Text(
                          'Restore',
                          style: AppTextStyles.s12W400(
                            color: AppColors.textColor5B575D,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
