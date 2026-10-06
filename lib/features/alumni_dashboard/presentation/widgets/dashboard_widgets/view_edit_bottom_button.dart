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
          padding: EdgeInsets.only(top:12.r, bottom: 12.r, left: 55.r, right: 55.r),
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
