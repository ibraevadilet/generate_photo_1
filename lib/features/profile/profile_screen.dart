import 'package:ai_photo1/features/profile/detil.dart';
import 'package:ai_photo1/theme/app_colors.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/getpro.png'),
            const SizedBox(height: 17),
            Container(
              height: 104,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blackColor1B181C,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  const CircleAvatar(
                    radius: 40,
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'sdfsdfsf',
                            style: AppTextStyles.s20W700(),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 24,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: AppColors.purple5B575D,
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 1,
                              ),
                              child: Text(
                                'Free plan',
                                style: AppTextStyles.s12W600(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'barbara@gmail.com',
                        style: AppTextStyles.s14W400(
                            color: AppColors.textColor5B575D),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Settings',
              style: AppTextStyles.s16W700(),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blackColor1B181C,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: const DetilSettings(
                      text: 'Privacy Policy',
                      image: 'assets/images/privacy.png',
                    ),
                  ),
                  const DivideR(),
                  InkWell(
                    onTap: () {},
                    child: const DetilSettings(
                      text: 'Terms of Use',
                      image: 'assets/images/terms.png',
                    ),
                  ),
                  const DivideR(),
                  InkWell(
                    onTap: () {},
                    child: const DetilSettings(
                      text: 'Support',
                      image: 'assets/images/support.png',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
