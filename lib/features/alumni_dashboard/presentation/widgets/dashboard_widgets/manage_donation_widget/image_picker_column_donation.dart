import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ImagePickerColumnDonation extends StatelessWidget {

  String text;
  String requiredFileType;
  Widget icon;
  Color color;

  ImagePickerColumnDonation({this.color = Colors.black,required this.requiredFileType, required this.text, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        dashPattern: [5, 3],
        strokeWidth: 2,
        radius: Radius.circular(16),
        color: Colors.grey.shade300,
      ),
      child: Container(
          height: 90.w,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(12.r),
          ),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            icon,
            Column(
              children: [
                Text(text, style: TextStyle(color: color, fontWeight: .bold),),
                Text(requiredFileType, style: TextStyle(color: Colors.grey),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
