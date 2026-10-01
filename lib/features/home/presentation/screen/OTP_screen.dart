import 'dart:async';

import 'package:alumni/core/network/status.dart';
import 'package:alumni/features/home/data/models/OTP_model/verify_OTP_Request_model.dart';
import 'package:alumni/features/home/data/models/login/login_request_model.dart';
import 'package:alumni/features/home/presentation/screen/dashboard_screen.dart';
import 'package:alumni/features/home/presentation/view_model/verify_and_login_view_model.dart';
import 'package:alumni/features/home/presentation/widgets/otp_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:provider/provider.dart';

class OtpScreen extends StatefulWidget {
  String mobileNo;
  OtpScreen({required this.mobileNo, super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late String otp;


  late List<TextEditingController> controller = List.generate(
    6,
    (index) => TextEditingController(text: otp[index]),
  );

  List<FocusNode> focusNode = List.generate(6, (_) => FocusNode());

  Timer? _timer;

  int count = 60;
  bool _isDisable = true;

  late VerifyAndLoginViewModel _verifyAndLoginViewModel;



  Future<void> _initializeOtp() async {
    final s = await _verifyAndLoginViewModel.getOtp();

    if (!mounted) return;

    otp = s;

    final verifyOtpRequestModel = VerifyOtpRequestModel(
      mobile: widget.mobileNo,
      otp: otp,
    );

    await _verifyAndLoginViewModel.verifyOTP(
      verifyOtpRequestModel,
    );

    if (!mounted) return;

    _startTimer();
  }

  @override
  void initState() {
    super.initState();

    _verifyAndLoginViewModel = context.read<VerifyAndLoginViewModel>();
    _initializeOtp();
  }

  void _startTimer() {
    _timer?.cancel();

    setState(() {
      count = 60;
      _isDisable = true;
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (count > 0) {
        setState(() {
          count--;
        _isDisable = true;
        });
      }
      if (count == 0) {
        setState(() {
          _isDisable = false;
        });

        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _onOtpChanged(String value, int index) {
    if (value.isNotEmpty && index < 5) {
      focusNode[index + 1].requestFocus();
    }
  }

  void _onBackspace(int index) {
    if (index > 0) {
      controller[index - 1].clear();
      focusNode[index - 1].requestFocus();
    }
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(15.r),
            child: Column(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.r),
                      child: Row(children: [Icon(Icons.lock, size: 30,), Text("Enter OTP Code", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)]),
                    ),
                    Text(
                      "Plese enter the 6-digit OTP send to your registered mobile number to verify your identity",
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:60.r),
                      child: Column(
                        crossAxisAlignment: .center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 12,
                            child: Consumer<VerifyAndLoginViewModel>(
                              builder: (context, value, child) {
                                if(value.verifyOtpApiResponse.status == Status.COMPLETE){
                                  return Row(
                                    children: List.generate(
                                      6,
                                          (index) => Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                                          child: OtpTextField(
                                            enabled: true,
                                            controller: controller[index],
                                            node: focusNode[index],
                                            onChanged: (value) {
                                              _onOtpChanged(value, index);
                                            },
                                            onBackspace: () {
                                              _onBackspace(index);
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }

                                return Row(
                                    children: List.generate(
                                      6,
                                          (index) => Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                                          child: OtpTextField(
                                            enabled: false,
                                            controller: controller[index],
                                            node: focusNode[index],
                                            onChanged: (value) {
                                              _onOtpChanged(value, index);
                                            },
                                            onBackspace: () {
                                              _onBackspace(index);
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  );

                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.r),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: .center,
                                children: [Padding(
                                  padding: EdgeInsets.only(right: 8.r),
                                  child: Icon(Icons.edit, color: Theme.of(context).colorScheme.secondary,),
                                ), Text("Edit Mobile, Number", style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 15.sp, fontWeight: FontWeight.bold),)],
                              ),
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              text: "You can resend the code in",
                              children: [
                                TextSpan(
                                  text: " $count",
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                TextSpan(text: " Second"),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              text: "Didn't receive the code? ",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: "Resend OTP",
                                  style: TextStyle(
                                    color: _isDisable
                                        ? Colors.grey.shade500
                                        : Theme.of(context).colorScheme.secondary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = _isDisable?null:(){
                                      _startTimer();
                                    },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Consumer<VerifyAndLoginViewModel>(builder: (context, value, child) {
                  if(value.loginApiResponse.status == Status.LOADING){
                    return AbsorbPointer(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/18,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Center(child: CircularProgressIndicator(color: Theme.of(context).colorScheme.surface,)),
                      ),
                    );
                  }
                  if(value.loginApiResponse.status == Status.ERROR){
                    return AbsorbPointer(
                      child: InkWell(
                        onTap: ()async{
                          Navigator.pop(context);
                          LoginRequestModel loginRequestModel = LoginRequestModel(mobile: widget.mobileNo, otp: otp);

                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashboardScreen(),));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height/18,
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Center(child: Text("OTP not verified or expired", style: TextStyle(color: Theme.of(context).colorScheme.surface, fontWeight: FontWeight.bold, fontSize: 15.sp),)),
                        ),
                      ),
                    );
                  }
                  return AbsorbPointer(
                    child: InkWell(
                      onTap: ()async{
                        Navigator.pop(context);
                        LoginRequestModel loginRequestModel = LoginRequestModel(mobile: widget.mobileNo, otp: otp);

                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashboardScreen(),));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/18,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Center(child: Text("Log In", style: TextStyle(color: Theme.of(context).colorScheme.surface, fontWeight: FontWeight.bold, fontSize: 15.sp),)),
                      ),
                    ),
                  );
                },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
