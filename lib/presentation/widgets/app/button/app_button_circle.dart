import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_fade.dart';

class AppButtonCircle extends StatelessWidget {
  const AppButtonCircle(
      {super.key,
      required this.onTap,
      required this.icon,
      this.buttonColor,
      this.iconColor});

  final Function() onTap;
  final IconData icon;
  final Color? buttonColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return AppButtonFade(
      onTap: onTap,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: buttonColor ?? AppColors.primary,
        ),
        child: Center(
            child: Icon(
          icon,
          color: iconColor,
        )),
      ),
    );
  }
}
