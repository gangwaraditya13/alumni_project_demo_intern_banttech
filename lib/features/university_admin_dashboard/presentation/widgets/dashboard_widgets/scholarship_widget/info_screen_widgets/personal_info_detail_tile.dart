import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class PersonalInfoDetailTile extends StatelessWidget {
  String title;
  String info;
  double width;
  double titleFontSize;
  double infoFontSize;
  PersonalInfoDetailTile({required this.infoFontSize, required this.titleFontSize,required this.width, required this.title,required this.info, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4.r,
      crossAxisAlignment: .start,
      children: [
        Text(title,style: TextStyle(color: Colors.grey, fontWeight: .bold, fontSize: titleFontSize),),
        Container(
          padding: EdgeInsets.only(right:15.r, left: 15.r, top: 9.r, bottom: 9.r),
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Colors.grey.shade300)
          ),
            child: Text(info, style: TextStyle(fontWeight: FontWeight.bold, fontSize: infoFontSize),),
        )
      ],
    );
  }
}
