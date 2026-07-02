import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:soldnet/models/utils/chat_tab.dart';
import 'package:soldnet/models/utils/dialog_bg.dart';

part 'store_chat.g.dart';
part 'store_chat.freezed.dart';

@freezed
abstract class StoreChatModel with _$StoreChatModel {
  const factory StoreChatModel({
    required ChatTab tab,
    required List<String> chatGroups,
    required DialogBg dialogBg,
  }) = _StoreChatModel;
}

@Riverpod(keepAlive: true)
class StoreChat extends _$StoreChat {
  @override
  StoreChatModel build() => StoreChatModel(
      tab: ChatTab.groups, chatGroups: [], dialogBg: DialogBg.leaves);

  void setTab(ChatTab tab) {
    state = state.copyWith(tab: tab);
  }

  void setDialogBg(DialogBg bg) {
    state = state.copyWith(dialogBg: bg);
  }
}
