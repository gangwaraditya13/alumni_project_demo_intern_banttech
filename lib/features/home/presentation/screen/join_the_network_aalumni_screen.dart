import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class JoinTheNetworkAalumniScreen extends StatelessWidget {
  const JoinTheNetworkAalumniScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Theme.of(context).colorScheme.secondary,
            child: Padding(
              padding: EdgeInsets.only(top:80.r),
              child: Image.asset("lib/assets/icons/img.png",alignment: .topCenter,color: Theme.of(context).colorScheme.surface,),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.width/0.6,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60.r), topRight: Radius.circular(60.r))
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30.r),
                        child: Text("Log In as Alumni", style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.secondary),),
                      ),
                      SizedBox(
                        width: 120.w,
                        child: Divider(color: Theme.of(context).colorScheme.secondary, thickness: 2.w,),
                      ),
                      Text("Sign In to Your Alumni Dashboard")
                    ],
                  ),
                  Form(child: Padding(
                    padding: EdgeInsets.all(30.r),
                    child: TextFormField(
                      keyboardType: .number,
                      decoration: InputDecoration(
                        label: Text("Enter your mobile", style: TextStyle(color: Colors.grey),),
                        prefixIcon: Icon(Icons.phone),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.6), width: 2.w),
                            gapPadding: 8.r
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary, width: 2.w),
                            gapPadding: 8.r
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
                  IconButton(onPressed: (){}, icon: Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: MediaQuery.of(context).size.height/20,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.all(Radius.circular(12.r))
                    ),
                    child: Center(child: Text("Send OTP")),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
