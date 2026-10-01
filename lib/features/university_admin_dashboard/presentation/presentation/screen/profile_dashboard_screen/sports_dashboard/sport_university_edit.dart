import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/image_picker_column_university_admin.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/user_input_dropdown_university_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class SportUniversityEdit extends StatelessWidget {
  SportUniversityEdit ({super.key});

  final List<String> gameList = [
    "chess", "Cycling", "Fencing", "Football", "Golf", "Gymnastics", "Carrom"
  ];

  final List<String> gameTypeList = [
    "OutDoor", "InDoor"
  ];

  final game = ValueNotifier<String?>(null);

  final gameType = ValueNotifier<String?>(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ProfileCircularAvatar()
        ],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: EdgeInsets.only(top:8.0, left: 15.r, right: 15.r),
        child: Column(
          mainAxisAlignment: .spaceBetween,
          children: [
            Column(
                crossAxisAlignment: .start,
                spacing: 20.r,
                children: [
                  ImagePickerColumnUniversityAdmin(text: "Upload Course Photo", icon: Icon(Icons.camera_alt_outlined)),
                  Container(
                    height: 100.w,
                    width: 150.w,
                    clipBehavior: .antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r)
                    ),
                    child: Image.network("https://plus.unsplash.com/premium_photo-1721755992476-3df0ab7188c2?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit: .cover,),
                  ),
                  UserInputDropdownUniversityAdmin(valueListenable: game, itemList: gameList, hint: Text("Select Sport", style: TextStyle(color: Colors.grey),)),
                  UserInputDropdownUniversityAdmin(valueListenable: gameType, itemList: gameTypeList, hint: Text("Select Category", style: TextStyle(color: Colors.grey),)),
                ]
            ),
            Column(
              children: [
                CustomAnimationButton(callback: (){
                  Navigator.pop(context);
                }, text: "Update Courses"),
                SizedBox(
                  height: 20.w,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
