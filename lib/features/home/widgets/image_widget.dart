import 'dart:math';

import 'package:ai_photo1/core/functions/push_router_func.dart';
import 'package:ai_photo1/features/generate/model/generate_model.dart';
import 'package:ai_photo1/routes/mobile_auto_router.gr.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:ai_photo1/widgets/spaces.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key, required this.model});
  final PhotoModel model;

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  int likeCount = Random().nextInt(1000) + 50;
  int eye = Random().nextInt(1000) + 50;
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRouting.pushFunction(
          HomeDetailRoute(
            model: widget.model,
            eye: eye,
            likeCount: likeCount,
            isLiked: isLiked,
          ),
        );
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
              imageUrl: widget.model.image,
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
                  CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(
                      widget.model.avatar,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    widget.model.name,
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
                  eye.toString(),
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
                GestureDetector(
                  onTap: () {
                    isLiked = !isLiked;
                    if (isLiked) {
                      likeCount++;
                    } else {
                      likeCount--;
                    }
                    setState(() {});
                  },
                  child: Icon(isLiked ? Icons.favorite : Icons.favorite_border,
                      color: Colors.white),
                ),
                const SizedBox(width: 5),
                Text(
                  likeCount.toString(),
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
