import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/utils/chat_tab.dart';
import 'package:soldnet/presentation/widgets/chat/chat_action_buttons.dart';
import 'package:soldnet/presentation/widgets/chat/chat_dialog.dart';
import 'package:soldnet/presentation/widgets/chat/chat_groups.dart';
import 'package:soldnet/presentation/widgets/chat/chat_header.dart';
import 'package:soldnet/presentation/widgets/chat/chat_text_field.dart';
import 'package:soldnet/stores/store_chat.dart';

class ChatContainer extends ConsumerStatefulWidget {
  const ChatContainer({super.key});

  @override
  ConsumerState<ChatContainer> createState() => _ChatContainerState();
}

class _ChatContainerState extends ConsumerState<ChatContainer> {
  bool _areActionButtonsVisible = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() => _areActionButtonsVisible = true);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;
    final paddingBottom = MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final chatState = ref.watch(storeChatProvider);

    return SizedBox(
      child: Stack(
        children: [
          AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              width: screenWidth - 92,
              height: 106,
              left: _areActionButtonsVisible ? 16 : -screenWidth,
              top: paddingTop + 8,
              child: ChatHeader()),
          AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              width: 52,
              height: 106,
              right: _areActionButtonsVisible ? 16 : -68,
              top: paddingTop + 8,
              child: ChatActionButtons()),
          AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              width: screenWidth - 32,
              height: screenHeight - paddingTop - 122,
              left: _areActionButtonsVisible && chatState.tab != ChatTab.dialog
                  ? 16
                  : -screenWidth,
              top: paddingTop + 122,
              child: ChatGroups()),
          AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              width: screenWidth - 32,
              height: screenHeight - paddingBottom - paddingTop - 184,
              right: _areActionButtonsVisible && chatState.tab == ChatTab.dialog
                  ? 16
                  : -screenWidth,
              bottom: paddingBottom + 64,
              child: ChatDialog()),
          AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              width: screenWidth - 32,
              height: 48,
              right: _areActionButtonsVisible && chatState.tab == ChatTab.dialog
                  ? 16
                  : -screenWidth,
              bottom: paddingBottom + 8,
              child: ChatTextField())
        ],
      ),
    );
  }
}
