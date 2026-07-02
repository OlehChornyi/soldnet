import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/utils/dialog_bg.dart';
import 'package:soldnet/presentation/widgets/chat/chat_dialog_message.dart';
import 'package:soldnet/stores/store_chat.dart';

class ChatDialog extends ConsumerWidget {
  const ChatDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    final chatState = ref.watch(storeChatProvider);

    return Container(
        width: screenWidth - 32,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
          // color: AppColors.bgLight,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              image: AssetImage(getDataDialogBg(chatState.dialogBg).bg),
              fit: BoxFit.cover),
        ),
        child: ListView.separated(
          itemCount: _messages.length,
          padding: EdgeInsets.zero,
          separatorBuilder: (context, index) => const SizedBox(
            height: 8,
          ),
          itemBuilder: (context, index) {
            return ChatDialogMessage(
                text: _messages[index].text, isUser: _messages[index].isUser);
          },
        ));
  }
}

List<({String text, bool isUser})> get _messages => [
      (text: 'Hello!', isUser: true),
      (text: 'Hello! MazerPlayer, boo yah! Just do it.', isUser: false),
      (text: 'Hello! MazerPlayer, boo yah! Just do it.', isUser: true),
      (text: 'Hello!', isUser: true),
      (text: 'Hello!', isUser: true),
      (text: 'Hello!', isUser: false),
      (text: 'Hello!', isUser: true),
      (text: 'Hello!', isUser: false),
      (text: 'Hello!', isUser: true),
      (text: 'Hello!', isUser: false),
      (text: 'Hello!', isUser: true),
      (text: 'Hello!', isUser: false),
      (text: 'Hello!', isUser: true),
    ];
