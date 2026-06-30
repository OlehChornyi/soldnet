import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_fade.dart';

class AppButtonCircle extends StatelessWidget {
  const AppButtonCircle({super.key, required this.onTap, required this.icon});

  final Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return AppButtonFade(
      onTap: onTap,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primary,
        ),
        child: Center(child: Icon(icon)),
      ),
    );
  }
}
