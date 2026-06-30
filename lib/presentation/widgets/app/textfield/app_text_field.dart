import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';

class AppTextField extends StatefulWidget {
  const AppTextField(
      {super.key,
      required this.controller,
      required this.focusNode,
      required this.isNotError,
      required this.hint,
      this.isWordField,
      this.minLines = 1,
      this.keyboardType,
      this.onChanged,
      this.onSubmitted,
      this.borderRadius});

  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isNotError;
  final String hint;
  final bool? isWordField;
  final int minLines;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final double? borderRadius;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(color: color, width: 2),
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
      );

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onChanged);
    widget.focusNode.addListener(_onChanged);
  }

  void _onChanged() {
    setState(() {});
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onChanged);
    widget.focusNode.removeListener(_onChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: widget.minLines,
      maxLines: widget.minLines,
      style: AppTextStyles.s12w500(),
      controller: widget.controller,
      focusNode: widget.focusNode,
      autocorrect: false,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.grey220,
        hintText: widget.hint,
        suffixIcon:
            widget.controller.text.isNotEmpty && widget.focusNode.hasFocus
                ? IconButton(
                    icon: Icon(Icons.close, size: 24, color: AppColors.black),
                    onPressed: () {
                      widget.controller.clear();
                    },
                  )
                : null,
        hintStyle: AppTextStyles.s12w500(color: AppColors.grey170),
        enabledBorder: _border(
          widget.isNotError ? AppColors.primary : AppColors.error,
        ),
        focusedBorder: _border(
          widget.isNotError ? AppColors.primary : AppColors.error,
        ),
      ),
    );
  }
}
