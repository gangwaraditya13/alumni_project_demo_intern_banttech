import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ViewEditBottomButton extends StatelessWidget {

  Color color;
  Widget icon;
  VoidCallback? onTap;

  ViewEditBottomButton({this.onTap,required this.icon, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
                color: color,
                width: 1
            )
        ),
        child: Padding(
          padding: EdgeInsets.only(top:8.r, bottom: 8.r, left: 50.r, right: 50.r),
          child: Row(
            spacing: 8.r,
            children: [
              icon,
              Text("View", style: TextStyle(color: color),)
            ],
          ),
        ),
      ),
    );
  }
}
