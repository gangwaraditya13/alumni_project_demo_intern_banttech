import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class IconAndText extends StatelessWidget {

  Widget icons;
  String text;

  IconAndText({required this.text, required this.icons, super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      spacing: 3.r,
      children: [
        Container(
          height: 20.r,
          width: 20.r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: icons
        ),
        Text(text)
      ],
    );
  }
}
