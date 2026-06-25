import 'package:flutter/material.dart';

class AppButtonFade extends StatefulWidget {
  final Widget child;
  final Function()? onTap;

  const AppButtonFade({required this.child, required this.onTap, super.key});

  @override
  State<AppButtonFade> createState() => _FadeOnTapButtonState();
}

class _FadeOnTapButtonState extends State<AppButtonFade> {
  double _opacity = 1.0;

  void _onTapDown(TapDownDetails _) {
    setState(() => _opacity = 0.5);
  }

  void _onTapUp(TapUpDetails _) {
    setState(() => _opacity = 1.0);
  }

  void _onTapCancel() {
    setState(() => _opacity = 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 100),
        child: widget.child,
      ),
    );
  }
}
