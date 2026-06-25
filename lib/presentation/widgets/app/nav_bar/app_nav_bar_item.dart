import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/nav_bar/app_nav_bar.dart';

class AppNavBarItem extends ConsumerStatefulWidget {
  final NavBarRecord item;

  const AppNavBarItem({super.key, required this.item});

  @override
  ConsumerState<AppNavBarItem> createState() => _AppNavBarItemState();
}

class _AppNavBarItemState extends ConsumerState<AppNavBarItem> {
  void goToPage(BuildContext context) {
    context.go(widget.item.key);
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();

    return Expanded(
      child: GestureDetector(
        onTap: () {
          HapticFeedback.lightImpact();
          goToPage(context);
        },
        child: Align(
          alignment: Alignment.center,
          child: Container(
            color: AppColors.primary,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    color: widget.item.key == location
                        ? AppColors.selectedNavBarItem
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(child: Icon(widget.item.icon)),
                ),
                const SizedBox(height: 4),
                Text(
                  widget.item.label,
                  style: AppTextStyles.s12w500(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
