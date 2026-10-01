import 'dart:async';

import 'package:alumni/features/common/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeView(),));
    },);
  }

  @override
  Widget build(BuildContext context) {

    var heightOfLowerCircle = MediaQuery.of(context).size.height / 11;
    var heightOfUpperCircle = MediaQuery.of(context).size.height / 4;

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height / 1.7,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: .spaceBetween,
            children: [
              Stack(
                children: [
                  CustomPaint(
                    painter: CustomPainterUp(20, [
                      Colors.blueAccent,
                      Colors.blueAccent,
                      Colors.blueAccent,
                      Colors.white,
                    ]),
                    size: Size(
                      MediaQuery.of(context).size.width,
                        heightOfUpperCircle,
                    ),
                  ),
                  CustomPaint(
                    painter: CustomPainterUp(40, [
                      Colors.blueAccent,
                      Colors.blueAccent,
                      Colors.blueAccent,
                      Colors.white,
                    ]),
                    size: Size(
                      MediaQuery.of(context).size.width,
                        heightOfUpperCircle,
                    ),
                  ),
                  CustomPaint(
                    painter: CustomPainterUp(60, [
                      Colors.blueAccent,
                      Colors.blueAccent,
                      Colors.blueAccent,
                      Colors.white,
                    ]),
                    size: Size(
                      MediaQuery.of(context).size.width,
                        heightOfUpperCircle,
                    ),
                  ),
                  CustomPaint(
                    painter: CustomPainterUp(80, [
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,

                      Colors.blueAccent,
                      Colors.blueAccent,
                    ]),
                    size: Size(
                      MediaQuery.of(context).size.width,
                        heightOfUpperCircle,
                    ),
                  ),
                  CustomPaint(
                    painter: CustomPainterUp(100, [
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,

                      Colors.blueAccent,
                      Colors.blueAccent,
                    ]),
                    size: Size(
                      MediaQuery.of(context).size.width,
                        heightOfUpperCircle,
                    ),
                  ),
                  CustomPaint(
                    painter: CustomPainterUp(120, [
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,

                      Colors.blueAccent,
                      Colors.blueAccent,
                    ]),
                    size: Size(
                      MediaQuery.of(context).size.width,
                        heightOfUpperCircle,
                    ),
                  ),
                ],
              ),
              Container(
                height: 150.h,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("lib/assets/icons/img.png", color: Colors.white,),
              ),
              Stack(
                children: [
                  CustomPaint(
                    painter: CustomPainterDown(20.r, [
                      Colors.white,
                      Colors.white,
                    ]),
                    size: Size(
                      MediaQuery.of(context).size.width,
                      heightOfLowerCircle,
                    ),
                  ),
                  CustomPaint(
                    painter: CustomPainterDown(40.r, [
                      Colors.white,
                      Colors.white,
                    ]),
                    size: Size(
                      MediaQuery.of(context).size.width,
                      heightOfLowerCircle,
                    ),
                  ),
                  CustomPaint(
                    painter: CustomPainterDown(60.r, [
                      Colors.white,
                      Colors.white,
                    ]),
                    size: Size(
                      MediaQuery.of(context).size.width,
                      heightOfLowerCircle,
                    ),
                  ),
                  CustomPaint(
                    painter: CustomPainterDown(80.r, [
                      Colors.white,
                      Colors.blueAccent,
                      Colors.blueAccent,
                    ]),
                    size: Size(
                      MediaQuery.of(context).size.width,
                      heightOfLowerCircle,
                    ),
                  ),
                  CustomPaint(
                    painter: CustomPainterDown(100.r, [
                      Colors.white,
                      Colors.blueAccent,
                      Colors.blueAccent,
                      Colors.blueAccent,

                    ]),
                    size: Size(
                      MediaQuery.of(context).size.width,
                      heightOfLowerCircle,
                    ),
                  ),
                  CustomPaint(
                    painter: CustomPainterDown(120.r, [
                      Colors.white,
                      Colors.blueAccent,
                      Colors.blueAccent,
                      Colors.blueAccent,
                      Colors.blueAccent,
                    ]),
                    size: Size(
                      MediaQuery.of(context).size.width,
                      heightOfLowerCircle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomPainterUp extends CustomPainter {
  double r;

  List<Color> colorL;

  CustomPainterUp(this.r, this.colorL);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: colorL,
      ).createShader(Rect.fromCircle(center: Offset(size.width, 0), radius: r))
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(Offset(size.width, 0), r, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomPainterDown extends CustomPainter {
  double r;
  List<Color> colorL;

  CustomPainterDown(this.r, this.colorL);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.height/5, size.width/1.05);

    final paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: colorL,
      ).createShader(Rect.fromCircle(center: center, radius: r))
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, r, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
