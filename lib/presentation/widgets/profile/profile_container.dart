import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12)),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: _profileItems.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 8,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _profileItems[index].value,
                            style:
                                AppTextStyles.s16w500(color: AppColors.white),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            _profileItems[index].label,
                            style: AppTextStyles.s12w500(color: AppColors.bg),
                          ),
                        ],
                      );
                    },
                  )),
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

typedef ProfileItem = ({String label, String value});

List<ProfileItem> get _profileItems => [
      (label: 'П.І.Б.', value: 'Чорний Олег Віталійовий'),
      (label: 'Військове Звання', value: 'Старший Солдат'),
      (label: 'Цивільна спеціальність', value: 'Філософ'),
      (label: 'Коло інтересів', value: 'Програмування')
    ];
