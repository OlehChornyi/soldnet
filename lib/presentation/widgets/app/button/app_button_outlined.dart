import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_fade.dart';

class AppButtonOutlined extends StatelessWidget {
  const AppButtonOutlined(
      {super.key,
      required this.text,
      required this.onTap,
      this.buttonColor,
      this.textColor});

  final String text;
  final Function() onTap;
  final Color? buttonColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return AppButtonFade(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 2,
              color: buttonColor ?? AppColors.primary,
            )),
        child: Center(
            child: Text(text,
                style: AppTextStyles.s16w700(
                    color: textColor ?? AppColors.primary))),
      ),
    );
  }
}
