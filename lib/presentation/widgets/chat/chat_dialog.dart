import 'package:flutter/material.dart';
import 'package:soldnet/presentation/widgets/chat/chat_dialog_message.dart';

class ChatDialog extends StatelessWidget {
  const ChatDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
        width: screenWidth - 32,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
          // color: AppColors.bgLight,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              image: AssetImage('assets/images/chat/dialog_bg.png'),
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
