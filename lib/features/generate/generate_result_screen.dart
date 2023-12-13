import 'package:ai_photo1/features/generate/cubits/generate_result_cubit/generate_result_cubit.dart';
import 'package:ai_photo1/theme/app_colors.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:ai_photo1/widgets/custom_button.dart';
import 'package:ai_photo1/widgets/spaces.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:share_plus/share_plus.dart';

@RoutePage()
class GenerateResultScreen extends StatefulWidget {
  const GenerateResultScreen({super.key});

  @override
  State<GenerateResultScreen> createState() => _GenerateResultScreenState();
}

class _GenerateResultScreenState extends State<GenerateResultScreen> {
  bool isShowForAll = false;
  final String imageUrl =
      'https://www.supersprint.com/public/img/01-504900-504930-504960-504990-505020.jpg';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GenerateResultCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const CircleAvatar(
                        backgroundColor: AppColors.blackColor1B181C,
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      'Result',
                      style: AppTextStyles.s16W700(
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await GallerySaver.saveImage(imageUrl);
                      },
                      child: const CircleAvatar(
                        backgroundColor: AppColors.blackColor1B181C,
                        child: Icon(
                          Icons.download_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 22),
                Container(
                  clipBehavior: Clip.hardEdge,
                  width: context.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: imageUrl,
                  ),
                ),
                const SizedBox(height: 22),
                Text(
                  'Promt',
                  style: AppTextStyles.s16W700(
                    color: AppColors.textColor5B575D,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Create a cyberpunk image of a T-rex flying in an iron suit. Use bright colors',
                  style: AppTextStyles.s14W400(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Style',
                  style: AppTextStyles.s16W700(
                    color: AppColors.textColor5B575D,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Digital art',
                  style: AppTextStyles.s14W400(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                const Divider(
                  color: AppColors.textColor5B575D,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Show image for others',
                        style: AppTextStyles.s16W700(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Switch.adaptive(
                      activeColor: AppColors.purpleA106F4,
                      value: isShowForAll,
                      onChanged: (value) =>
                          setState(() => isShowForAll = value),
                    )
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        radius: 50,
                        borderColor: Colors.white,
                        color: Colors.black,
                        onPress: () async {
                          await Share.share(imageUrl);
                        },
                        text: 'Share',
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child:
                          BlocBuilder<GenerateResultCubit, GenerateResultState>(
                        builder: (context, state) {
                          return CustomButton(
                            isLoading: state.loding,
                            gradient: const LinearGradient(
                              colors: [
                                AppColors.purpleA106F4,
                                AppColors.purpleE707FA,
                              ],
                            ),
                            radius: 50,
                            color: AppColors.purpleA106F4,
                            onPress: () {
                              context
                                  .read<GenerateResultCubit>()
                                  .saveDataPhoto();
                            },
                            text: 'Save',
                          );
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
