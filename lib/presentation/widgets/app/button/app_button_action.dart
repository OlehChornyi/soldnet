import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_fade.dart';

class AppButtonAction extends StatelessWidget {
  const AppButtonAction({
    super.key,
    required this.text,
    required this.onTap,
    this.buttonColor,
  });

  final String text;
  final Function() onTap;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return AppButtonFade(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: Text(text, style: AppTextStyles.s16w500())),
      ),
    );
  }
}
