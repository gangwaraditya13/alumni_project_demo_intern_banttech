import 'package:alumni/features/home/presentation/widgets/label_text_user_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class GetStartedUniversityScreen extends StatelessWidget {
  const GetStartedUniversityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: .spaceBetween,
            children: [
              Column(
                      crossAxisAlignment: .start,
                      children: [
              Padding(
                padding: EdgeInsets.only(left: 30.r, top: 30.r),
                child: Container(
                    width: 70.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.6),
                      borderRadius: BorderRadius.circular(15.r)
                    ),
                    child: Icon(Icons.account_balance_outlined, size: 40.r,)),
              ),
              Padding(
                padding: EdgeInsets.all(30.r),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text("Welcome !!",style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),),
                    Text("Log In for University",style: TextStyle(color: Colors.grey.withValues(alpha: 0.9)),),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: .start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.r,bottom: 8.r),
                    child: LabelTextUserInput(text: "Mobile"),
                  ),
                  Form(child: Padding(
                    padding: EdgeInsets.only(left: 30.r, right: 30.r, bottom: 30.r),
                    child: TextFormField(
                      keyboardType: .number,
                      decoration: InputDecoration(
                        label: Text("Enter Mobile", style: TextStyle(color: Colors.grey),),
                        prefixIcon: Icon(Icons.phone_android),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.6), width: 2.w),
                            gapPadding: 8.r
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary, width: 2.w),
                            gapPadding: 8.w
                        ),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(color: Colors.red, width: 2.w),
                            gapPadding: 8.r
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(color: Colors.red, width: 2.w),
                            gapPadding: 8.r
                        ),
                      ),
                    ),
                  )),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.r,right: 30.r),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.all(Radius.circular(15.r))
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.r),
                    child: Row(
                      children: [
                        Container(
                          width: 50.w,
                          height: 50.h,
                          child: Padding(
                            padding: EdgeInsets.all(8.0.r),
                            child: Image.asset("lib/assets/icons/danger.png", color: Colors.red,height: 30.h,width: 30.w,),
                          ),
                        ),
                        Expanded(child: Padding(
                          padding: EdgeInsets.only(left: 8.r),
                          child: Text("OTP will be send to your registered mobile number for secure login verification."),
                        ))
                      ],
                    ),
                  ),
                ),
              )
                      ],
                    ),
              Padding(
                padding: EdgeInsets.only(left: 30.r,right: 30.r),
                child: IconButton(
                  onPressed: () {},
                  icon: Container(
                    height: MediaQuery.of(context).size.height / 19,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Center(
                      child: Text(
                        "Send OTP Code",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.surface,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
