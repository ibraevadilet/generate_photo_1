import 'package:ai_photo1/theme/app_colors.dart';
import 'package:ai_photo1/theme/app_text_styles.dart';
import 'package:ai_photo1/widgets/app_input_borders.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.validator,
  });
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.blackColor1B181C,
          ),
          child: TextFormField(
            onChanged: (value) => setState(() {}),
            minLines: 4,
            maxLines: 6,
            maxLength: 500,
            validator: widget.validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: widget.controller,
            style: AppTextStyles.s14W400(color: Colors.white),
            decoration: InputDecoration(
              counterText: '',
              fillColor: AppColors.blackColor1B181C,
              filled: true,
              hintText: widget.hintText,
              hintStyle:
                  AppTextStyles.s14W400(color: AppColors.textColor5B575D),
              border: AppInputBorders.bgGrey,
              enabledBorder: AppInputBorders.bgGrey,
              focusedBorder: AppInputBorders.bgGrey,
              contentPadding: const EdgeInsets.all(15),
              isDense: true,
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          right: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '${widget.controller.text.length}/500',
                style: AppTextStyles.s12W400(color: AppColors.textColor5B575D),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () {
                  widget.controller.clear();
                },
                child: const CircleAvatar(
                  radius: 10,
                  backgroundColor: AppColors.textColor5B575D,
                  child: Icon(
                    Icons.close,
                    size: 15,
                    color: AppColors.blackColor1B181C,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
