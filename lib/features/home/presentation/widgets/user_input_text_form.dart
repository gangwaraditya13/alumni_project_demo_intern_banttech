import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class UserInputTextForm extends StatelessWidget {

  TextEditingController textEditingController;

  Widget? label;

  Widget? suffixIcon;

  FormFieldValidator<String>? validator;

  TextInputType keyboardType;

  Widget? hint;

  int? maxLength;

  ValueChanged<String>? onChange;


  UserInputTextForm({this.maxLength, this.onChange,this.hint, required this.keyboardType, this.suffixIcon, this.label, required this.textEditingController,super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      controller: textEditingController,
      validator: validator,
      keyboardType: keyboardType,
      maxLength: maxLength,

      decoration: InputDecoration(
        counterText: "",
        label: label,
        hint: hint,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: Colors.grey.withValues(alpha: 0.5), width: 2.w),
            gapPadding: 8.r
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: Colors.grey.withValues(alpha: 1), width: 2.w),
            gapPadding: 8.r
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: Colors.red, width: 2.w),
            gapPadding: 8.r
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: Colors.red, width: 2.w),
            gapPadding: 8.r
        ),
      ),
    );
  }
}
