import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:ai_photo1/widgets/spaces.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CollectionIyemWidget extends StatelessWidget {
  const CollectionIyemWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          width: context.width,
          height: 108,
          child: CachedNetworkImage(
            imageUrl:
                'https://www.audi-mediacenter.com/system/production/cars/138/photos/1867677cf2b6e777bf23c2ec6dddc8b639f4bc61/web_1440_Audi_nanuk_quattro_concept_2013.jpg?1698934601',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 7,
          bottom: 7,
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/images/like.png',
                  width: 20,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                '1.2k',
                style: AppTextStyles.s12W400(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
