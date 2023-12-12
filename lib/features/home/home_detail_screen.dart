import 'package:ai_photo1/theme/app_colors.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:ai_photo1/widgets/spaces.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

final List<String> listPromts = [
  'Digital art',
  'White',
  'Without BG',
  'Statue with golden rifts',
];

@RoutePage()
class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const CircleAvatar(
                        backgroundColor: AppColors.blackColor1B181C,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(
                        'https://www.supersprint.com/public/img/01-504900-504930-504960-504990-505020.jpg',
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'SmokePlumes',
                      style: AppTextStyles.s14W400(
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const Opacity(
                      opacity: 0,
                      child: CircleAvatar(
                        backgroundColor: AppColors.blackColor1B181C,
                        child: Icon(
                          Icons.arrow_back_ios,
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
                    imageUrl:
                        'https://www.supersprint.com/public/img/01-504900-504930-504960-504990-505020.jpg',
                  ),
                ),
                const SizedBox(height: 22),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.remove_red_eye, color: Colors.white),
                        const SizedBox(width: 5),
                        Text(
                          '10.3k',
                          style: AppTextStyles.s14W400(color: Colors.white),
                        )
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(Icons.favorite, color: Colors.white),
                        const SizedBox(width: 5),
                        Text(
                          '10.3k',
                          style: AppTextStyles.s14W400(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Text(
                  'Promts',
                  style: AppTextStyles.s16W700(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: listPromts
                      .map<Widget>(
                        (e) => Container(
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
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
