import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class ChatDialog extends StatelessWidget {
  const ChatDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 200,
      width: screenWidth - 32,
      decoration: BoxDecoration(
          color: AppColors.bgLight, borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Text('[ under construction ]'),
      ),
    );
  }
}
