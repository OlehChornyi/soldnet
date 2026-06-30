import 'package:flutter/widgets.dart';
import 'package:soldnet/presentation/widgets/chat/chat_action_buttons.dart';
import 'package:soldnet/presentation/widgets/chat/chat_text_field.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;
    final paddingBottom = MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      child: Stack(
        children: [
          Positioned(
              width: 52,
              height: 106,
              right: 16,
              top: paddingTop + 8,
              child: ChatActionButtons()),
          Positioned(
              width: screenWidth - 32,
              height: 48,
              left: 16,
              bottom: paddingBottom + 8,
              child: ChatTextField())
        ],
      ),
    );
  }
}
