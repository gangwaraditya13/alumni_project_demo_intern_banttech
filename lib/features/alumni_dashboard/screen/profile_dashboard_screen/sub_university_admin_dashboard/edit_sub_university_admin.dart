import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/image_picker_column_university_admin.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/user_input_text_form_university_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class EditSubUniversityAdmin extends StatelessWidget {
  EditSubUniversityAdmin({super.key});

  TextEditingController _nameTextEditingController = TextEditingController(text: "Akash Kumar");
  TextEditingController _emailTextEditingController = TextEditingController(text: "akashkumar12@gmail.com");
  TextEditingController _phoneTextEditingController = TextEditingController(text: "8098789878");
  TextEditingController _OTPTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ProfileCircularAvatar(),
        ],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: EdgeInsets.only(top: 8.r, left: 15.r, right: 15.r),
        child: Column(
          mainAxisAlignment: .spaceBetween,
          children: [
            Column(
              crossAxisAlignment: .start,
              spacing: 15.r,
              children: [
                ImagePickerColumnUniversityAdmin(text: "Upload Profile Photo", icon: Icon(Icons.camera_alt_outlined)),
                Container(
                  height: 100.w,
                  width: 150.w,
                  clipBehavior: .antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Image.network("https://plus.unsplash.com/premium_photo-1721755992476-3df0ab7188c2?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
                ),
                UserInputTextFormUniversityAdmin(keyboardType: .name, textEditingController: _nameTextEditingController),
                UserInputTextFormUniversityAdmin(keyboardType: .emailAddress, textEditingController: _emailTextEditingController),
                UserInputTextFormUniversityAdmin(keyboardType: .phone, textEditingController: _phoneTextEditingController, suffixIcon: TextButton(onPressed: (){}, child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    padding: EdgeInsets.only(top: 4.r, bottom: 4.r, left: 10.r, right: 10.r),
                    child: Text("Verify", style: TextStyle(color: Colors.green),))),),
                UserInputTextFormUniversityAdmin(keyboardType: .number, textEditingController: _OTPTextEditingController, hint: Text("Enter 6-digit OTP",style: TextStyle(color: Colors.grey),),maxLength: 6,),

              ],
            ),
            Column(
              children: [
                CustomAnimationButton(callback: (){
                  Navigator.pop(context);
                }, text: "Update Sub-University Admin"),
                SizedBox(
                  height: 20.w,
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
