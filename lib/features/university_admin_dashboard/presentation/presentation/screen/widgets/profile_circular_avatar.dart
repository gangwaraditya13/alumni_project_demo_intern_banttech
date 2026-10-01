import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ProfileCircularAvatar extends StatelessWidget {
  const ProfileCircularAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(50.r),
        border: BoxBorder.all(
          color: Theme.of(
            context,
          ).colorScheme.secondary,
          width: 2.w,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(2.r),
        child: CircleAvatar(
          foregroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1718209881014-83732ea8376d?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          ),
          radius: 13.r,
        ),
      ),
    );
  }
}
