import 'package:ai_photo1/core/constants/app_test_constants.dart';
import 'package:ai_photo1/core/constants/app_url.dart';
import 'package:ai_photo1/core/functions/push_router_func.dart';
import 'package:ai_photo1/core/images/app_images.dart';
import 'package:ai_photo1/core/purchase/premium.dart';
import 'package:ai_photo1/features/profile/detil.dart';
import 'package:ai_photo1/routes/mobile_auto_router.gr.dart';
import 'package:ai_photo1/theme/app_colors.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:ai_photo1/widgets/shared_pref_settings.dart';
import 'package:ai_photo1/widgets/spaces.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FutureBuilder(
                future: CheckPremium.getSubscrp(),
                builder: (BuildContext context, snapshot) {
                  if (snapshot.hasData) {
                    if (!snapshot.data!) {
                      return Image.asset(AppImages.getpro);
                    } else {
                      return const SizedBox();
                    }
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              const SizedBox(height: 17),
              Container(
                height: 104,
                width: context.width,
                decoration: BoxDecoration(
                  color: AppColors.blackColor1B181C,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 15),
                    FutureBuilder(
                      future: SharedSettings.getString(AppTextConstants.image),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.hasData) {
                          return FittedBox(
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  CachedNetworkImageProvider(snapshot.data),
                            ),
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              FutureBuilder(
                                future: SharedSettings.getString(
                                    AppTextConstants.name),
                                builder: (BuildContext context, snapshot) {
                                  if (snapshot.hasData) {
                                    return FittedBox(
                                      child: Text(
                                        snapshot.data,
                                        style: AppTextStyles.s20W700(),
                                      ),
                                    );
                                  } else {
                                    return const SizedBox();
                                  }
                                },
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
                                  child: FutureBuilder(
                                    future: CheckPremium.getSubscrp(),
                                    builder: (BuildContext context, snapshot) {
                                      if (snapshot.hasData) {
                                        if (snapshot.data!) {
                                          return Text(
                                            'Pro plan',
                                            style: AppTextStyles.s12W600(),
                                          );
                                        } else {
                                          return Text(
                                            'Free plan',
                                            style: AppTextStyles.s12W600(),
                                          );
                                        }
                                      } else {
                                        return Text(
                                          'Free plan',
                                          style: AppTextStyles.s12W600(),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          FutureBuilder(
                            future: SharedSettings.getString(
                                AppTextConstants.email),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.hasData) {
                                return FittedBox(
                                  child: Text(
                                    snapshot.data,
                                    style: AppTextStyles.s14W400(
                                        color: AppColors.textColor5B575D),
                                  ),
                                );
                              } else {
                                return const SizedBox();
                              }
                            },
                          ),
                        ],
                      ),
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
                    DetilSettings(
                      onTap: () {
                        AppRouting.pushFunction(
                          WebViewRoute(
                            title: 'Privacy Policy',
                            url: AppUrl.privacyPolicy,
                          ),
                        );
                      },
                      text: 'Privacy Policy',
                      image: 'assets/images/privacy.png',
                    ),
                    const DivideR(),
                    DetilSettings(
                      onTap: () {
                        AppRouting.pushFunction(
                          WebViewRoute(
                            title: 'Terms of Use',
                            url: AppUrl.termOfUse,
                          ),
                        );
                      },
                      text: 'Terms of Use',
                      image: 'assets/images/terms.png',
                    ),
                    const DivideR(),
                    DetilSettings(
                      onTap: () {
                        AppRouting.pushFunction(
                          WebViewRoute(
                            title: 'Support',
                            url: AppUrl.supportForm,
                          ),
                        );
                      },
                      text: 'Support',
                      image: 'assets/images/support.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
