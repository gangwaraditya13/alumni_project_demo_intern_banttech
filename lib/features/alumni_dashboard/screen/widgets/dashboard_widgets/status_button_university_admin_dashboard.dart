import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class StatusButtonUniversityAdminDashboard extends StatelessWidget {
  Color buttonColor;
  Widget child;
  StatusButtonUniversityAdminDashboard({required this.buttonColor, required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        color: buttonColor
      ),
      child: Padding(
        padding: EdgeInsets.only(top:1.r, bottom: 1.r, left: 13.r, right: 13.r),
        child: child,
      ),
    );
  }
}
