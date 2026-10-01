import 'package:alumni/features/home/presentation/screen/OTP_screen.dart';
import 'package:alumni/features/home/presentation/widgets/custom_painter_widgets/signin_curve_painter.dart';
import 'package:alumni/common/home_view.dart';
import 'package:alumni/features/home/presentation/widgets/user_input_text_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  bool _isDisable = true;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(top: 45.r),
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(
                        MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height / 6,
                      ),
                      painter: SignInCurvePainter(),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 6,
                      child: Column(
                        mainAxisAlignment: .center,
                        crossAxisAlignment: .center,
                        children: [
                          Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 35.sp,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          Text(
                            "One Platform, Multiple Role",
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 15.r),
                            child: Text(
                              "Sign In Your Way",
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.3,
                child: Stack(
                  children: [
                    Positioned(
                      left: 40.w,
                      top: 130.h,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50.r,
                            backgroundColor: Colors.grey,
                            backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1552209841-d2dc5fd68a30?q=80&w=1532&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                            ),
                          ),
                          Text(
                            "Athlete",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 150.w,
                      top: 10.h,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50.r,
                            backgroundColor: Colors.grey,
                            backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1552744151-70e075ee366d?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                            ),
                          ),
                          Text(
                            "University",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 290.w,
                      top: 10.h,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50.r,
                            onForegroundImageError: (exception, stackTrace) => {
                              debugPrint("image not found"),
                            },
                            child: Image.asset("lib/assets/icons/danger.png"),
                            foregroundImage: NetworkImage(
                              "https://plus.unsplash.com/premium_photo-1664304491249-81113667177e?q=80&w=1479&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                            ),
                          ),
                          Text(
                            "Alumni",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 260.w,
                      top: 150.h,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 70.r,
                            onForegroundImageError: (exception, stackTrace) => {
                              debugPrint("image not found"),
                            },
                            child: Image.asset("lib/assets/icons/danger.png"),
                            foregroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1785906358742-1b5867519add?q=80&w=1036&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                            ),
                          ),
                          Text(
                            "Mentor",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 150.w,
                      top: 250.h,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 45.r,
                            onForegroundImageError: (exception, stackTrace) => {
                              debugPrint("image not found"),
                            },
                            child: Image.asset("lib/assets/icons/danger.png"),
                            foregroundImage: NetworkImage(
                              "https://plus.unsplash.com/premium_photo-1770512405236-3368929d2f91?q=80&w=1515&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                            ),
                          ),
                          Text(
                            "Student",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.r),
                    topLeft: Radius.circular(25.r),
                  ),
                ),
                height: MediaQuery.of(context).size.height / 3.2,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Wrap(
                    children: [
                      Align(
                        alignment: .centerLeft,
                        child: Text.rich(
                          TextSpan(
                            text: "Mobile",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: "*",
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.r, bottom: 15.r),
                        child: Form(
                          child: UserInputTextForm(
                            maxLength: 10,
                            onChange: (value) {

                              if(!value.isEmpty && int.parse(value[0]) > 5 && value.length == 10){
                                _isDisable = false;
                              }else{
                                _isDisable = true;
                              }

                              setState(() {});
                            },
                            keyboardType: .number,
                            textEditingController: _textEditingController,
                            hint: Text(
                              "Enter 10-digit mobile number",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: _isDisable ? null : () {
                          _textEditingController.clear();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(),));
                          _isDisable = true;
                        },
                        child: Container(
                          height: 50.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: _isDisable ? Colors.grey : Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              "Send OTP",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.surface,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: .center,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeView(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: .center,
                            children: [
                              Icon(
                                Icons.arrow_back,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              Text(
                                "Back to Home",
                                style: TextStyle(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.secondary,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  decoration: .underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
