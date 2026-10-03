import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class DocsTile extends StatelessWidget {
  String title;
  DocsTile({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105.w,
      width: 250.w,
      clipBehavior: .antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300)
      ),
      child: Column(
        spacing: 8.r,
        children: [
          Container(
            height: 70.w,
            width: 250.w,
            child: Image.network("https://images.unsplash.com/photo-1562654501-a0ccc0fc3fb1?q=80&w=2532&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
          ),
          Text(title, style: TextStyle(fontSize: 12.sp),)
        ],
      ),
    );
  }
}
