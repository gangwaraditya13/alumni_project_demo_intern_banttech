import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class HeadingRowInfo extends StatelessWidget {
  double height;
  Widget widget;
  HeadingRowInfo({required this.widget,required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.r,
      children: [
        Container(
          height: height,
          width: height/5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: Colors.redAccent.shade700
          ),
        ),
        widget
      ],
    );
  }
}
