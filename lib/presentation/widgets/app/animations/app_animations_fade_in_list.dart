import 'package:flutter/material.dart';

class AppFadeInList<T> extends StatefulWidget {
  final List<T> items;
  final Widget Function(BuildContext, T, int) itemBuilder;
  final Duration itemDelay;
  final Duration fadeDuration;
  final EdgeInsetsGeometry? padding;
  final ScrollController? controller;
  final Axis scrollDirection;
  final Widget? bottomWidget;

  const AppFadeInList({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.itemDelay = const Duration(milliseconds: 200),
    this.fadeDuration = const Duration(milliseconds: 800),
    this.scrollDirection = Axis.vertical,
    this.padding,
    this.controller,
    this.bottomWidget,
  });

  @override
  State<AppFadeInList<T>> createState() => _AppFadeInListState<T>();
}

class _AppFadeInListState<T> extends State<AppFadeInList<T>> {
  late List<bool> _visible;

  @override
  void initState() {
    super.initState();
    _visible = List.filled(widget.items.length, false);
    _runFadeInAnimation();
  }

  void _runFadeInAnimation() {
    for (int i = 0; i < widget.items.length; i++) {
      Future.delayed(widget.itemDelay * i, () {
        if (mounted) {
          if (i < widget.items.length) {
            setState(() => _visible[i] = true);
          }
        }
      });
    }
  }

  @override
  void didUpdateWidget(covariant AppFadeInList<T> oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.items.length != widget.items.length) {
      _visible = List.filled(widget.items.length, false);
      _runFadeInAnimation();
    }
  }

  @override
  Widget build(BuildContext context) {
    final double bottomPadding = MediaQuery.of(context).padding.bottom;

    return ListView.separated(
      key: ValueKey(widget.items.length),
      padding: widget.padding,
      controller: widget.controller,
      scrollDirection: widget.scrollDirection,
      itemCount: widget.items.length,
      separatorBuilder: (context, index) {
        return const SizedBox(height: 12, width: 12);
      },
      itemBuilder: (context, index) {
        if (index == widget.items.length) {
          return widget.bottomWidget ?? SizedBox(height: 84 + bottomPadding);
        } else {
          if (index < 10) {
            return AnimatedOpacity(
              duration: widget.fadeDuration,
              opacity: _visible[index] ? 1.0 : 0.0,
              child: widget.itemBuilder(context, widget.items[index], index),
            );
          } else {
            return widget.itemBuilder(context, widget.items[index], index);
          }
        }
      },
    );
  }
}
