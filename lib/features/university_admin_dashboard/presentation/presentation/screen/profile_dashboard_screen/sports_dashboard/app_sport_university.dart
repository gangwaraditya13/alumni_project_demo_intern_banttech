import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/image_picker_column_university_admin.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/user_input_dropdown_university_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AppSportUniversity extends StatelessWidget {
  const AppSportUniversity({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> gameList = [
      "chess", "Cycling", "Fencing", "Football", "Golf", "Gymnastics", "Carrom"
    ];

    final List<String> gameTypeList = [
      "OutDoor", "InDoor"
    ];

    final game = ValueNotifier<String?>(null);

    final gameType = ValueNotifier<String?>(null);

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
                UserInputDropdownUniversityAdmin(valueListenable: game, itemList: gameList, hint: Text("Select Sport")),
                UserInputDropdownUniversityAdmin(valueListenable: gameType, itemList: gameTypeList, hint: Text("Select Category")),
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
