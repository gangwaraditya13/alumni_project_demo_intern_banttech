import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/app_bar_icon.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/image_picker_column_university_admin.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/user_input_dropdown_university_admin.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/user_input_text_form_university_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class UniversityAdminEditProfile extends StatelessWidget {
  UniversityAdminEditProfile({super.key});

  final TextStyle _textStyle = TextStyle(color: Colors.grey.withValues(alpha: 0.6),);

  final List<TextEditingController> _textController = List.generate(9,(index) => TextEditingController(),);

  final state = ValueNotifier<String?>(null);

  late final List<Widget> hint = [
    Text("Enter university name", style: _textStyle ,),
    Text("Write short description", style: _textStyle ,),
    Text("Enter mobile", style: _textStyle ,),
    Text("Enter your email", style: _textStyle ,),
    Text("Enter address", style: _textStyle ,),
    Text("Enter city", style: _textStyle ,),
    Text("Enter Zip code", style: _textStyle ,),
    Text("Enter campus", style: _textStyle ,),
    Text("Enter university type", style: _textStyle ,),
    Text("Select state", style: _textStyle ,),
  ];

  List<String> stateList = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttar Pradesh",
    "Uttarakhand",
    "West Bengal",
    "Andaman and Nicobar Islands",
    "Chandigarh",
    "Dadra and Nagar Haveli and Daman and Diu",
    "Delhi",
    "Jammu and Kashmir",
    "Ladakh",
    "Lakshadweep",
    "Puducherry",
  ];

  final double _formPadding_top = 8.r;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile",  style: TextStyle(fontSize: 15.sp),textAlign: .start,),
        centerTitle: true,
        actions: [
          AppBarIcon(
            icons: IconButton(onPressed: (){},
              icon: Icon(Icons.search, size: 17.r,),
            ),
          ),
          SizedBox.square(dimension: 8.w,),
          ProfileCircularAvatar()
        ],
        actionsPadding: EdgeInsets.all(8.r),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: EdgeInsets.all(15.r),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: UserInputTextFormUniversityAdmin(hint: hint[0], textEditingController: _textController[0], keyboardType: .name,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: UserInputTextFormUniversityAdmin(hint: hint[1], textEditingController: _textController[1], keyboardType: .name, maxLines: 4,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: UserInputTextFormUniversityAdmin(hint: hint[2], textEditingController: _textController[2], keyboardType: .name,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: UserInputTextFormUniversityAdmin(hint: hint[3], textEditingController: _textController[3], keyboardType: .name,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: UserInputTextFormUniversityAdmin(hint: hint[4], textEditingController: _textController[4], keyboardType: .name,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: UserInputTextFormUniversityAdmin(hint: hint[5], textEditingController: _textController[5], keyboardType: .name,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: UserInputTextFormUniversityAdmin(hint: hint[6], textEditingController: _textController[6], keyboardType: .name,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: UserInputTextFormUniversityAdmin(hint: hint[7], textEditingController: _textController[7], keyboardType: .name,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: UserInputTextFormUniversityAdmin(hint: hint[8], textEditingController: _textController[8], keyboardType: .name,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: UserInputDropdownUniversityAdmin(valueListenable: state, itemList: stateList, hint: hint[9]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: ImagePickerColumnUniversityAdmin(icon: Icon(Icons.camera_alt_outlined,),text: "Upload Emblem Logo",),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: Row(
                      children: [
                        Container(
                          height: 70.w,
                          width: 100.w,
                          clipBehavior: .hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Image.network("https://images.unsplash.com/photo-1530549387789-4c1017266635?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .fill,),
                        ),
                      ],
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: ImagePickerColumnUniversityAdmin(icon: Icon(Icons.camera_alt_outlined,),text: "Upload sports Logo",),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top:_formPadding_top),
                      child: Row(
                        children: [
                          Container(
                            height: 70.w,
                            width: 100.w,
                            clipBehavior: .hardEdge,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Image.network("https://images.unsplash.com/photo-1530549387789-4c1017266635?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .fill,),
                          ),
                        ],
                      )
                  ),
                ],
              ),
            ),
            CustomAnimationButton(text: "update Profile", callback: (){
              Navigator.pop(context);
            },)
          ],
        ),
      ),
    );
  }
}
