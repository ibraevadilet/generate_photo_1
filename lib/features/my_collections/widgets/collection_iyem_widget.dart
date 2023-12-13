import 'dart:math';

import 'package:ai_photo1/features/generate/model/generate_model.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:ai_photo1/widgets/spaces.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CollectionIyemWidget extends StatefulWidget {
  const CollectionIyemWidget({super.key, required this.model});

  final PhotoModel model;

  @override
  State<CollectionIyemWidget> createState() => _CollectionIyemWidgetState();
}

class _CollectionIyemWidgetState extends State<CollectionIyemWidget> {
  int likeCount = Random().nextInt(1000) + 50;
  bool isLiked = false;
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
            imageUrl: widget.model.image,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 7,
          bottom: 7,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  isLiked = !isLiked;
                  if (isLiked) {
                    likeCount++;
                  } else {
                    likeCount--;
                  }
                  setState(() {});
                },
                child: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                likeCount.toString(),
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
