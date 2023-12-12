import 'package:ai_photo1/core/images/app_images.dart';
import 'package:ai_photo1/features/auth/auth_with_social_cubit/auth_with_social_cubit.dart';
import 'package:ai_photo1/theme/app_colors.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:ai_photo1/widgets/custom_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthWithSocialCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Image.asset(
                    AppImages.appLogo,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hello!',
                      style: AppTextStyles.s32W700(),
                    ),
                    const SizedBox(width: 5),
                    Image.asset(
                      AppImages.handSmileIcon,
                      height: 30,
                    )
                  ],
                ),
                Text(
                  "We're delighted to see you again. Let's make today amazing together!",
                  style:
                      AppTextStyles.s14W400(color: AppColors.textColor5B575D),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                BlocBuilder<AuthWithSocialCubit, AuthWithSocialState>(
                  builder: (context, state) {
                    return CustomButton(
                      isLoading: state.googleLoading,
                      radius: 60,
                      color: Colors.black,
                      borderColor: Colors.white,
                      onPress: () {
                        context.read<AuthWithSocialCubit>().authWithGoogle();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AppImages.googleLogo),
                          const SizedBox(width: 5),
                          Text(
                            'Continue with Google',
                            style: AppTextStyles.s16W700(),
                          )
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  radius: 60,
                  color: Colors.black,
                  borderColor: Colors.white,
                  onPress: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Continue as a guest',
                        style: AppTextStyles.s16W700(),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        'By signing up, you are crearing a AI photo generator account and agree with our ',
                    style:
                        AppTextStyles.s12W400(color: AppColors.textColor5B575D),
                    children: [
                      TextSpan(
                        text: 'Terms of Service ',
                        style: AppTextStyles.s12W400(
                            color: AppColors.purple5B575D),
                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () => AppRouting.pushFunction(
                        //       const PrivacyPolicyRoute()),
                      ),
                      TextSpan(
                        text: 'and',
                        style: AppTextStyles.s12W400(
                            color: AppColors.textColor5B575D),
                      ),
                      TextSpan(
                        text: ' Privacy Policy ',
                        style: AppTextStyles.s12W400(
                            color: AppColors.purple5B575D),
                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () => AppRouting.pushFunction(
                        //       const UserAgreementRoute()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
