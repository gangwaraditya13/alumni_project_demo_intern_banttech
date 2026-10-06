import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/image_picker_column_university_admin.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/user_input_dropdown_university_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AddUniversityCourses extends StatelessWidget {
  const AddUniversityCourses({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> courses = [
      "B.A", "B.Con", "BCA", "MCA", "BBA", "pd.D", "M.A"
    ];

    final List<String> statusList = [
      "Active", "Inactive"
    ];

    final course = ValueNotifier<String?>(null);

    final status = ValueNotifier<String?>(null);

    return Scaffold(
      appBar: AppBar(
        actions: [
          ProfileCircularAvatar()
        ],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 8.r),
        child: Column(
          mainAxisAlignment: .spaceBetween,
          children: [
            Column(
              spacing: 25.r,
              children: [
                ImagePickerColumnUniversityAdmin(text: "Upload Course Photo", icon: Icon(Icons.camera_alt_outlined)),
                UserInputDropdownUniversityAdmin(valueListenable: course, itemList: courses, hint: Text("Select Course")),
                UserInputDropdownUniversityAdmin(valueListenable: status, itemList: statusList, hint: Text("Select Status")),
              ],
            ),
            CustomAnimationButton(callback: (){
              Navigator.pop(context);
            }, text: "Add Courses")
          ],
        ),
      ),
    );
  }
}
