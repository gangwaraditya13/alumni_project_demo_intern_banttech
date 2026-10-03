import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class OtpTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode node;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onBackspace;
  final bool enabled;

  const OtpTextField({
    required this.enabled,
    required this.node,
    required this.controller,
    this.onChanged,
    this.onBackspace,
    super.key,
  });

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: BorderSide(color: color, width: 2.w),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      child: Focus(
        // Only listens to key events bubbling up from the TextField.
        // It never creates a new FocusNode inside build().
        canRequestFocus: false,
        skipTraversal: true,
        onKeyEvent: (_, event) {
          if (event is KeyDownEvent &&
              event.logicalKey == LogicalKeyboardKey.backspace &&
              controller.text.isEmpty) {
            onBackspace?.call();
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        },
        child: TextField(
          enabled: enabled,
          controller: controller,
          focusNode: node,
          onChanged: onChanged,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          maxLength: 1,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          // Select the existing digit so typing replaces it.
          onTap: () => controller.selection = TextSelection(
            baseOffset: 0,
            extentOffset: controller.text.length,
          ),
          decoration: InputDecoration(
            counterText: "",
            border: _border(Colors.grey),
            enabledBorder: _border(Colors.grey.withValues(alpha: 0.5)),
            focusedBorder: _border(Colors.grey),
            errorBorder: _border(Colors.red),
            focusedErrorBorder: _border(Colors.red),
          ),
        ),
      ),
    );
  }
}