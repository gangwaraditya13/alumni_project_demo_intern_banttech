import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:lottie/lottie.dart';

class CustomAnimationButton extends StatefulWidget {
  String text;
  VoidCallback callback;
  CustomAnimationButton({required this.callback, required this.text, super.key});

  @override
  State<CustomAnimationButton> createState() => _CustomAnimationButtonState();
}

class _CustomAnimationButtonState extends State<CustomAnimationButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.callback,
      child: Container(
        height: 40.w,
        width: MediaQuery.of(context).size.width,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Theme.of(context)
              .colorScheme
              .secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              bottom: 0,
              top:10,
              child: Transform.scale(
                scale: 5.3.w,
                alignment: .center,
                child: Lottie.asset(
                  "lib/assets/animation/sea_waves.json",
                  fit: BoxFit.fill,
                ),
              ),
            ),

            Center(
              child: Text(
                widget.text,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.surface,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
