import 'package:alumni/features/home/presentation/widgets/label_text_user_input.dart';
import 'package:alumni/features/home/presentation/widgets/user_input_dropdown.dart';
import 'package:alumni/features/home/presentation/widgets/user_input_text_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class StudentSignupScreen extends StatefulWidget {
  StudentSignupScreen({super.key});

  @override
  State<StudentSignupScreen> createState() => _StudentSignupScreenState();
}

class _StudentSignupScreenState extends State<StudentSignupScreen> {
  final TextEditingController _fullNameTextEditingController =
      TextEditingController();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _mobileTextEditingController =
      TextEditingController();
  final TextEditingController _OTPTextEditingController =
      TextEditingController();

  final _university = ValueNotifier<String?>(null);
  final _course = ValueNotifier<String?>(null);
  final _year = ValueNotifier<String?>(null);

  final List<String> _universityList = [
    'Invertis University',
    'Amity University',
    'Lovely Professional University',
    'Chandigarh University',
    'Sharda University',
    'Galgotias University',
    'Bennett University',
    'Graphic Era University',
    'Delhi University',
    'Jawaharlal Nehru University',
  ];

  final List<String> _courseList = [
    'B.Tech Computer Science and Engineering',
    'B.Tech Information Technology',
    'BCA',
    'MCA',
    'BBA',
    'MBA',
    'B.Sc Computer Science',
    'B.Com',
    'BA',
    'M.Tech',
  ];

  final List<String> _yearList = [
    '1st Year',
    '2nd Year',
    '3rd Year',
    '4th Year',
    '5th Year',
  ];

  final GlobalKey<FormState> _globalKey = GlobalKey();

  @override
  void dispose() {
    super.dispose();

    _fullNameTextEditingController.dispose();
    _emailTextEditingController.dispose();
    _mobileTextEditingController.dispose();
    _OTPTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Padding(
              padding: EdgeInsets.all(15.r),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            Expanded(
              child: Form(
                key: _globalKey,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.r, right: 15.r, top: 8.r),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.r),
                          child: UserInputTextForm(
                            textEditingController: _fullNameTextEditingController,
                            label: LabelTextUserInput(text: "FULL NAME"),
                            keyboardType: .text,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.r),
                          child: UserInputTextForm(
                            textEditingController: _emailTextEditingController,
                            label: LabelTextUserInput(text: "EMAIL ID"),
                            keyboardType: .emailAddress,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.r),
                          child: UserInputTextForm(
                            textEditingController: _mobileTextEditingController,
                            label: LabelTextUserInput(text: "MOBILE"),
                            keyboardType: .number,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.r),
                          child: UserInputTextForm(
                            textEditingController: _OTPTextEditingController,
                            label: LabelTextUserInput(text: "Enter 6-digit OTP"),
                            keyboardType: .number,
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Container(
                                height: MediaQuery.of(context).size.height / 23,
                                width: MediaQuery.of(context).size.width / 4.5,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.secondary,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Center(
                                  child: Text(
                                    "Send OTP",
                                    style: TextStyle(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.surface,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.r),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              LabelTextUserInput(text: "UNIVERSITY"),
                              UserInputDropdown(
                                valueListenable: _university,
                                itemList: _universityList,
                                hint: Text("Select University", style: TextStyle(color: Colors.grey.withValues(alpha: 0.8)),),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.r),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              LabelTextUserInput(text: "COURSE / PROGRAM"),
                              UserInputDropdown(
                                valueListenable: _course,
                                itemList: _courseList,
                                hint: Text("Course / Program", style: TextStyle(color: Colors.grey.withValues(alpha: 0.8)),),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.r),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              LabelTextUserInput(text: "YEAR / SEMESTER"),
                              UserInputDropdown(
                                valueListenable: _year,
                                itemList: _yearList,
                                hint: Text("Year / Semester", style: TextStyle(color: Colors.grey.withValues(alpha: 0.8)),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Container(
                      height: MediaQuery.of(context).size.height / 23,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Center(
                        child: Text(
                          "Send OTP",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.surface,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text("Already have an account?"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        decorationStyle: .solid,
                        decoration: .underline,
                        decorationColor: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
