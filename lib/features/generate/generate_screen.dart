// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ai_photo1/core/functions/push_router_func.dart';
import 'package:ai_photo1/core/images/app_images.dart';
import 'package:ai_photo1/features/generate/widgets/size_widget.dart';
import 'package:ai_photo1/routes/mobile_auto_router.gr.dart';
import 'package:ai_photo1/theme/app_colors.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:ai_photo1/widgets/custom_button.dart';
import 'package:ai_photo1/widgets/custom_text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class GenerateAndOnBoardingScreen extends StatefulWidget {
  const GenerateAndOnBoardingScreen({super.key});

  @override
  State<GenerateAndOnBoardingScreen> createState() =>
      _GenerateAndOnBoardingScreenState();
}

class _GenerateAndOnBoardingScreenState
    extends State<GenerateAndOnBoardingScreen> {
  final controller = TextEditingController();
  final List<String> listPromts = [
    'Disney Pixar',
    'Disney Pixar2',
    'Disney Pixar3',
    'Disney Pixar4',
  ];
  final List<StyleModel> styles = [
    StyleModel(
      image: AppImages.styleImage1,
      text: 'Digital Art',
    ),
    StyleModel(
      image: AppImages.styleImage2,
      text: 'Cyberpunk',
    ),
    StyleModel(
      image: AppImages.styleImage3,
      text: 'Surrealism',
    ),
    StyleModel(
      image: AppImages.styleImage4,
      text: 'Illustrated',
    ),
  ];

  List<String> sizes = [
    '256x256',
    '512x512',
    '1024x1024',
  ];

  String selectedStyle = '';
  String selectedSize = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'AI photo generator',
                style: AppTextStyles.s24W700(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              CustomTextField(
                hintText: 'Enter promt text',
                controller: controller,
              ),
              const SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: listPromts
                      .map<Widget>(
                        (e) => Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  controller.text = e;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: AppColors.purple200131,
                                ),
                                child: Text(
                                  e,
                                  style: AppTextStyles.s14W400(
                                    color: AppColors.purpleA106F4,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Style',
                style: AppTextStyles.s16W700(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: styles
                      .map<Widget>(
                        (e) => Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  controller.text = e.text;
                                  selectedStyle = e.image;
                                });
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    clipBehavior: Clip.hardEdge,
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: selectedStyle == e.image
                                          ? AppColors.purpleA106F4
                                          : Colors.black,
                                    ),
                                    child: Image.asset(
                                      e.image,
                                      fit: BoxFit.cover,
                                      height: 100,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 3,
                                    right: 3,
                                    left: 3,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(12),
                                          bottomRight: Radius.circular(12),
                                        ),
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12),
                                      child: Text(
                                        e.text,
                                        style: AppTextStyles.s12W400(
                                            color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 7),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Output resolution',
                style: AppTextStyles.s16W700(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  SizeWidget(
                    title: sizes[0],
                    isSelected: sizes[0] == selectedSize,
                    onTap: () => setState(() => selectedSize = sizes[0]),
                  ),
                  const SizedBox(width: 12),
                  SizeWidget(
                    title: sizes[1],
                    isSelected: sizes[1] == selectedSize,
                    onTap: () => setState(() => selectedSize = sizes[1]),
                  ),
                  const SizedBox(width: 12),
                  SizeWidget(
                    title: sizes[2],
                    isSelected: sizes[2] == selectedSize,
                    onTap: () => setState(() => selectedSize = sizes[2]),
                  ),
                ],
              ),
              const Spacer(),
              CustomButton(
                gradient: const LinearGradient(
                  colors: [
                    AppColors.purpleA106F4,
                    AppColors.purpleE707FA,
                  ],
                ),
                radius: 50,
                color: AppColors.purpleA106F4,
                onPress: () {
                  AppRouting.pushFunction(const GenerateResultRoute());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Generate',
                      style: AppTextStyles.s16W700(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Image.asset(
                      AppImages.generateIcon,
                      height: 30,
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

class StyleModel {
  final String image;
  final String text;
  StyleModel({
    required this.image,
    required this.text,
  });
}
