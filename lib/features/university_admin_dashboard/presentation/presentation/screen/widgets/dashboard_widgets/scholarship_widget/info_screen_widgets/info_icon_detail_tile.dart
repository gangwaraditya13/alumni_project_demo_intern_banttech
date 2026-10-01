import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class InfoIconDetailTile extends StatelessWidget {
  IconData icon;
  String title;
  String info;
  InfoIconDetailTile({required this.title,required this.icon, required this.info, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15.r,
      children: [
        Container(
          padding: EdgeInsets.all(8.r),
          decoration: BoxDecoration(
          color: Colors.redAccent.shade700,
            borderRadius: BorderRadius.circular(50.r)
          ),
          child: Icon(icon, color: Theme.of(context).colorScheme.surface,),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(title, style: TextStyle(color: Colors.grey, fontSize: 12.sp),),
              Text(info, style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold),),
            ],
          ),
        )
      ],
    );
  }
}
