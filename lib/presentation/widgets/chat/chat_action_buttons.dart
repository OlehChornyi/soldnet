import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_circle.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_fade.dart';

class ChatActionButtons extends StatelessWidget {
  const ChatActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButtonFade(
          onTap: () {},
          child: Container(
            width: 52,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.action1,
            ),
            child: Center(
                child: Icon(
              Icons.group_rounded,
              color: AppColors.white,
            )),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        AppButtonFade(
          onTap: () {},
          child: Container(
            width: 52,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.action2,
            ),
            child: Center(
                child: Icon(
              Icons.chat_rounded,
              color: AppColors.white,
            )),
          ),
        ),
      ],
    );
  }
}
