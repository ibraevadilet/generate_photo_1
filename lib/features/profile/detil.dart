import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class DetilSettings extends StatelessWidget {
  const DetilSettings({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: Row(
        children: [
          const SizedBox(width: 15),
          Image.asset(
            image,
            width: 24,
          ),
          const SizedBox(width: 14),
          Text(
            text,
            style: AppTextStyles.s16W400(),
          ),
          const Spacer(),
          const Icon(
            Icons.chevron_right_rounded,
            size: 34,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}

class DivideR extends StatelessWidget {
  const DivideR({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color.fromARGB(94, 158, 158, 158),
      thickness: 1,
    );
  }
}
