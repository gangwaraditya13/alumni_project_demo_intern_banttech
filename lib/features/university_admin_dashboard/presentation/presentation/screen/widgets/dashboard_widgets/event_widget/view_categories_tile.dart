import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ViewCategoriesTile extends StatelessWidget {
  String title;
  VoidCallback? onTap;
  ViewCategoriesTile({this.onTap, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(15.r),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15.r,
            vertical: 13.r,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Colors.grey.shade300)
          ),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 15.r,
                  fontWeight: .bold,
                ),
              ),
              Icon(Icons.keyboard_double_arrow_right, color: Theme.of(context).colorScheme.secondary,)
            ],
          ),
        ),
      ),
    );
  }
}
