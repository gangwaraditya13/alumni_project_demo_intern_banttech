import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AppBarIcon extends StatelessWidget {

  Widget icons;
  VoidCallback? onTap;
  Color color;

  AppBarIcon({this.color = Colors.grey,this.onTap, required this.icons, super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        height: 30.r,
        width: 30.r,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color.withValues(alpha: 0.3),
        ),
        child: icons,
      ),
    );
  }
}
