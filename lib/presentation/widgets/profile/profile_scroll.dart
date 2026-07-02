import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soldnet/models/utils/dialog_bg.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/stores/store_chat.dart';

class ProfileScroll extends ConsumerStatefulWidget {
  const ProfileScroll({super.key});

  @override
  ConsumerState<ProfileScroll> createState() => _ProfileScrollState();
}

class _ProfileScrollState extends ConsumerState<ProfileScroll> {
  late final ScrollController _controller;
  late final Ticker _ticker;
  final double _speed = 20;
  final double _itemWidth = 80;
  final int _repetition = 100;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController(
      initialScrollOffset: _repetition * _itemWidth,
    );

    _ticker = Ticker(_tick)..start();
  }

  void _tick(Duration elapsed) {
    if (!_controller.hasClients) return;
    final double offset = _controller.offset + _speed * (1 / 60);
    _controller.jumpTo(offset);
  }

  @override
  void dispose() {
    _ticker.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chatNotifier = ref.read(storeChatProvider.notifier);

    return SizedBox(
      height: 48,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        controller: _controller,
        itemBuilder: (context, index) {
          final bg = DialogBg.values[index % scrollOptions.length];
          final option = scrollOptions[index % scrollOptions.length];
          return FlipCard(
            onFlipDone: (isFront) =>
                isFront ? chatNotifier.setDialogBg(bg) : null,
            back: Container(
              width: 60,
              height: 60,
              color: AppColors.black,
              child: Center(
                child: SvgPicture.asset(
                  option.back,
                  colorFilter:
                      ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                ),
              ),
            ),
            front: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(image: AssetImage(option.front))),
            ),
          );
        },
      ),
    );
  }
}

List<DialogBgInfo> get scrollOptions => [
      for (var value in DialogBg.values) ...{getDataDialogBg(value)}
    ];
