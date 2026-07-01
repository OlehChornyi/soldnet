import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/utils/chat_tab.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/stores/store_chat.dart';

class ChatHeader extends ConsumerWidget {
  const ChatHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatState = ref.watch(storeChatProvider);

    return Container(
      width: MediaQuery.of(context).size.width - 92,
      height: 106,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.active,
      ),
      child: chatState.tab == ChatTab.dialog
          ? Center(
              child: Text(
              '[ under construction ]',
              style: AppTextStyles.s16w500(color: AppColors.white),
            ))
          : Center(
              child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.add_rounded,
                      color: AppColors.white,
                    ),
                    Text(
                      'Додати Чат',
                      style: AppTextStyles.s16w500(color: AppColors.white),
                    )
                  ],
                ),
                Divider(
                  color: AppColors.white,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'У вас є 8 активних чатів',
                  style: AppTextStyles.s16w500(color: AppColors.white),
                )
              ],
            )),
    );
  }
}
