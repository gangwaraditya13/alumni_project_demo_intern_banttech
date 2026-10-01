import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class HomeScreenPart2Card extends StatelessWidget {

  String universityName;
  String universityUri;

  HomeScreenPart2Card({required this.universityName, required this.universityUri, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: BoxBorder.all(
          color: Colors.grey,
          width: 2.r,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          right: 8.r,
          left: 8.r,
        ),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Padding(
              padding: EdgeInsets.all(
                8.r,
              ),
              child: Image.network(
                universityUri,
                height: 60.h,
                width: 60.w,errorBuilder: (context, error, stackTrace) => Image.asset("lib/assets/icons/danger.png", height: 60.h, width: 60.h,),
              ),
            ),
            Text(universityName),
          ],
        ),
      ),
    );
  }
}
