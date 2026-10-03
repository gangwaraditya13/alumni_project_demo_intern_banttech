import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AnimatedNavButton extends StatefulWidget {
  VoidCallback onTap;
  double wide;
  String title;
  Color color;
  AnimatedNavButton({required this.color, required this.title, required this.wide, required this.onTap, super.key});

  @override
  State<AnimatedNavButton> createState() => _AnimatedNavButtonState();
}

class _AnimatedNavButtonState extends State<AnimatedNavButton> {
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: widget.onTap,
      child: Container(
        width: MediaQuery.of(context).size.width/5.5,
        height: 46.5.w,
        child: Stack(
          alignment: .center,
          children: [
            Column(
              spacing: 8.r,
              mainAxisAlignment: .center,
              children: [
                Text(widget.title, style: TextStyle(fontWeight: .bold, color: widget.color),),
              ],
            ),
            Positioned(
              bottom: 0,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width: widget.wide,
                height: 2.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent.shade700
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
