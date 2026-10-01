import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class OtpTextField extends StatelessWidget {

  final TextEditingController controller;
  final FocusNode node;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onBackspace;

  const OtpTextField({
    required this.node,
    required this.controller,
    this.onChanged,
    this.onBackspace,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
        child: KeyboardListener(
          focusNode: FocusNode(),
          onKeyEvent: (event) {
            if (event is KeyDownEvent &&
                event.logicalKey == LogicalKeyboardKey.backspace) {
              if (controller.text.isEmpty) {
                onBackspace?.call();
              }
            }
          },
      child: TextField(
        onChanged: onChanged,
        keyboardType: .number,
        maxLength: 1,
        controller: controller,
        focusNode: node,
        textAlign: .center,
        decoration: InputDecoration(
          counterText: "",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            gapPadding: 0,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey.withValues(alpha: 0.99),
              width: 2.w,
            ),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 2.w,
            ),
          ),

          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(
              color: Colors.red,
              width: 2.w,
            ),
          ),

          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.red,
              width: 2.w,
            ),
          ),
        ),
      ),
        ),
    );
  }
}
