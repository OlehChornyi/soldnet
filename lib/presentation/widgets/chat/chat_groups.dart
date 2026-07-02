import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class ChatGroups extends StatelessWidget {
  const ChatGroups({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final paddingBottom = MediaQuery.of(context).padding.bottom;

    return ListView.separated(
      itemCount: 20,
      separatorBuilder: (context, index) => const SizedBox(
        height: 8,
      ),
      padding: EdgeInsets.only(bottom: paddingBottom + 8),
      itemBuilder: (context, index) {
        return Container(
          width: screenWidth - 32,
          height: 88,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.bgLight,
          ),
          child: Row(
            children: [
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.white),
                child: Center(
                  child: Icon(
                    Icons.person_rounded,
                    size: 48,
                    color: AppColors.bgLight,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Text('Чат № : $index'),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.primary,
              )
            ],
          ),
        );
      },
    );
  }
}
