import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/nav_bar/app_nav_bar_item.dart';

class AppNavBar extends ConsumerWidget {
  const AppNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Localizations.localeOf(context);
    final bottomPadding = MediaQuery.of(context).padding.bottom;

    return Padding(
      padding: EdgeInsets.fromLTRB(
        16,
        0,
        16,
        bottomPadding == 0 ? 12 : bottomPadding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var item in navBarItems) AppNavBarItem(item: item),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

typedef NavBarRecord = ({String key, IconData icon, String label});

List<NavBarRecord> get navBarItems => [
      (key: '/home', icon: Icons.home_rounded, label: 'Home'),
      (key: '/chat', icon: Icons.message_rounded, label: 'Chat'),
      (key: '/profile', icon: Icons.person_rounded, label: 'Profile'),
    ];
