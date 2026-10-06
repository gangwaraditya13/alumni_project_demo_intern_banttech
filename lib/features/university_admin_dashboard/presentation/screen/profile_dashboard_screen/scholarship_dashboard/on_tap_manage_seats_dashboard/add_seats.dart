import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/image_picker_column_university_admin.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/user_input_dropdown_university_admin.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/user_input_text_form_university_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AddSeats extends StatelessWidget {
  AddSeats({super.key});


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
                    UserInputDropdownUniversityAdmin(valueListenable: sports, itemList: sportsList, hint: Text("Select Sports")),
                    UserInputDropdownUniversityAdmin(valueListenable: countMember, itemList: memberCountList, hint: Text("Select Count")),
                    UserInputDropdownUniversityAdmin(valueListenable: course, itemList: coursesList, hint: Text("Select Course")),
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text.rich(TextSpan(text: "Scholarship Amount",style: TextStyle(fontWeight: FontWeight.bold), children: [TextSpan(text: " *", style: TextStyle(color: Colors.redAccent))])),
                        UserInputTextFormUniversityAdmin(keyboardType: .name, textEditingController: _textEditingController, hint: Text("Enter scholarship amount", style: TextStyle(color: Colors.grey, fontWeight: .bold),),)
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
