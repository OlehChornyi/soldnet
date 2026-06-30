import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: paddingTop + 12,
          ),
          SizedBox(
            height: 44,
            child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (context, index) => const SizedBox(
                      width: 8,
                    ),
                itemBuilder: (context, index) {
                  return Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/profile/header_${index + 1}.png'))),
                  );
                }),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.primary),
                child: Center(
                  child: Icon(
                    Icons.person_rounded,
                    size: 64,
                    color: AppColors.bg,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Container(
                width: screenWidth - 144,
                constraints: BoxConstraints(minHeight: 100),
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(12)),
              ),
            ],
          ),
          IconButton(
              onPressed: () => context.go(ScreenPaths.redirection),
              icon: Icon(Icons.logout_rounded)),
        ],
      ),
    );
  }
}
