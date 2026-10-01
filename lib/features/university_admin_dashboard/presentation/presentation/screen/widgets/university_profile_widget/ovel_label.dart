import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class OvelLabel extends StatelessWidget {

  Widget widget;
  Color color;
  OvelLabel({required this.widget,required this.color,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.r,vertical: 4.r),
        child: widget,
      ),
    );
  }
}
