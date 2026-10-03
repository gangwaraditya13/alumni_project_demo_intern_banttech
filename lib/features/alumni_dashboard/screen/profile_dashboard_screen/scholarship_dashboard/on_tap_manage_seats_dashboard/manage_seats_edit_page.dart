import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/image_picker_column_university_admin.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/user_input_dropdown_university_admin.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/user_input_text_form_university_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ManageSeatsEditPage extends StatelessWidget {
  ManageSeatsEditPage({super.key});

  final List<String> sportsList = [
    "Golf", "Archery", "Boxing", "Badminton", "Football", "Cricket", "Kabaddi", "Boli ball", "Hockey", "Kho-Kho"
  ];

  final List<String> coursesList = [
    "B.Tech", "M.Tech", "B.Com", "BCA", "MCA", "BBA", "MBA"
  ];

  late final List<String> memberCountList = List.generate(10, (index) => (index+1).toString());

  final sports = ValueNotifier<String?>(null);
  final countMember = ValueNotifier<String?>(null);
  final course = ValueNotifier<String?>(null);
  
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          ProfileCircularAvatar()
        ],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top:8.r, left: 15.r, right: 15.r),
          child: Column(
            mainAxisAlignment: .spaceBetween,
            children: [
              Column(
                crossAxisAlignment: .start,
                spacing: 15.r,
                children: [
                  ImagePickerColumnUniversityAdmin(text: "Upload Seat Photo", icon: Icon(Icons.camera_alt_outlined)),
                  Container(
                    height: 110.w,
                    width: 150.w,
                    child: Image.network("https://plus.unsplash.com/premium_photo-1664304805176-8de44cdc526d?q=80&w=1503&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
                  ),
                  UserInputDropdownUniversityAdmin(valueListenable: sports, itemList: sportsList, hint: Text("Select Sports")),
                  UserInputDropdownUniversityAdmin(valueListenable: countMember, itemList: memberCountList, hint: Text("Select Count")),
                  UserInputDropdownUniversityAdmin(valueListenable: course, itemList: coursesList, hint: Text("Select Course")),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text.rich(TextSpan(text: "Scholarship Amount",style: TextStyle(fontWeight: FontWeight.bold), children: [TextSpan(text: " *", style: TextStyle(color: Colors.redAccent))])),
                      UserInputTextFormUniversityAdmin(keyboardType: .name, textEditingController: _textEditingController, hint: Text("7000"),)
                    ],
                  )
                ]
              ),
              CustomAnimationButton(callback: (){
                Navigator.pop(context);
              }, text: "Update Seat")
            ],
          ),
        ),
      ),
    );
  }
}
