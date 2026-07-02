import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/utils/chat_tab.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_fade.dart';
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
          ? Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Павло Павленко',
                    style: AppTextStyles.s16w500(color: AppColors.white),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    for (int i = 0; i < 3; i++) ...{
                      if (i > 0)
                        const SizedBox(
                          width: 4,
                        ),
                      Expanded(
                        child: AppButtonFade(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Icon(
                                _chatHeaderItems[i].icon,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    }
                  ],
                )
              ],
            )
          : Center(
              child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                ),
                Divider(
                  color: AppColors.white,
                ),
                const SizedBox(
                  height: 4,
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

typedef ChatHeaderItem = ({IconData icon, Function() onTap});

List<ChatHeaderItem> get _chatHeaderItems => [
      (icon: Icons.call, onTap: () {}),
      (icon: Icons.video_chat, onTap: () {}),
      (icon: Icons.attach_file_rounded, onTap: () {})
    ];
