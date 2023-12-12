import 'package:ai_photo1/core/functions/push_router_func.dart';
import 'package:ai_photo1/routes/mobile_auto_router.gr.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:ai_photo1/widgets/spaces.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppRouting.pushFunction(const HomeDetailRoute());
      },
      child: Stack(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            width: context.width,
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl:
                  'https://www.supersprint.com/public/img/01-504900-504930-504960-504990-505020.jpg',
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black.withOpacity(0.7),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.person, color: Colors.white),
                  const SizedBox(width: 5),
                  Text(
                    'Name',
                    style: AppTextStyles.s12W400(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Row(
              children: [
                const Icon(Icons.remove_red_eye, color: Colors.white),
                const SizedBox(width: 5),
                Text(
                  '10.3k',
                  style: AppTextStyles.s12W400(color: Colors.white),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: Row(
              children: [
                const Icon(Icons.favorite, color: Colors.white),
                const SizedBox(width: 5),
                Text(
                  '10.3k',
                  style: AppTextStyles.s12W400(color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
