import 'package:flutter/material.dart';

class MandatoryText extends StatelessWidget {

  String title;

  MandatoryText({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan( text: title, style: TextStyle(fontWeight: .bold), children: [TextSpan(text: " *", style: TextStyle(color: Colors.red))]));
  }
}
