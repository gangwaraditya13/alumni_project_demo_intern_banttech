import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/image_picker_column_university_admin.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/user_input_text_form_university_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AddSubUniversityAdmin extends StatelessWidget {
  const AddSubUniversityAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameTextEditingController =
        TextEditingController();
    final TextEditingController _emailTextEditingController =
        TextEditingController();
    final TextEditingController _mobileTextEditingController =
        TextEditingController();
    final TextEditingController _OTPTextEditingController =
        TextEditingController();

    return Scaffold(
      appBar: AppBar(
        actions: [ProfileCircularAvatar()],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 8.r,
          bottom: 10.r,
          left: 15.r,
          right: 15.r,
        ),
        child: Column(
          mainAxisAlignment: .spaceBetween,
          children: [
            Column(
              spacing: 15.r,
              children: [
                ImagePickerColumnUniversityAdmin(
                  text: "Upload Profile Photo",
                  icon: Icon(Icons.camera_alt_outlined),
                ),
                UserInputTextFormUniversityAdmin(
                  keyboardType: .name,
                  textEditingController: _nameTextEditingController,
                  hint: Text(
                    "Enter sub-university admin name",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                UserInputTextFormUniversityAdmin(
                  keyboardType: .emailAddress,
                  textEditingController: _emailTextEditingController,
                  hint: Text(
                    "Enter email address",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                UserInputTextFormUniversityAdmin(
                  keyboardType: .phone,
                  textEditingController: _mobileTextEditingController,
                  hint: Text(
                    "Enter mobile number",
                    style: TextStyle(color: Colors.grey),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(8.r),
                    child: TextButton(onPressed: (){}, child: Text("Send OTP", style: TextStyle(fontSize: 12.sp,color:Theme.of(context).colorScheme.secondary, fontWeight: .bold),), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.primary)),),
                  ),
                ),
                UserInputTextFormUniversityAdmin(
                  keyboardType: .number,
                  textEditingController: _OTPTextEditingController,
                  hint: Text(
                    "Enter 6-digit OTP",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            CustomAnimationButton(
              callback: () {
                Navigator.pop(context);
              },
              text: "Add Sub-University Admin",
            ),
          ],
        ),
      ),
    );
  }
}
