import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class LabelTextUserInput extends StatelessWidget {

  String text;
  Color color;

  LabelTextUserInput({this.color =Colors.grey,required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: text,
          style: TextStyle(color: color, fontWeight: .bold, fontSize: 15.r)
          ,children: [
        TextSpan(
          text: " *",
          style: TextStyle(color: Colors.red),
        )
      ]),
    );
  }
}
