import 'package:alumni/features/alumni_dashboard/presentation/widgets/dashboard_widgets/app_bar_icon.dart';
import 'package:alumni/features/alumni_dashboard/presentation/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/alumni_dashboard/presentation/widgets/dashboard_widgets/manage_donation_widget/image_picker_column_donation.dart';
import 'package:alumni/features/alumni_dashboard/presentation/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/alumni_dashboard/presentation/widgets/user_input_text_form_university_admin.dart';
import 'package:alumni/features/home/presentation/widgets/label_text_user_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AlumniEditProfile extends StatelessWidget {
  AlumniEditProfile({super.key});

  final List<TextEditingController> _textController = List.generate(3,(index) => TextEditingController(),);

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
              icon: Icon(Icons.search, size: 17.r, color: Theme.of(context).colorScheme.surface,),
            ),color: Color(0xFF030164),
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
                      child: LabelTextUserInput(text: "Full Name", color: Colors.black,),
                    ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: UserInputTextFormUniversityAdmin(textEditingController: _textController[0], keyboardType: .name,),
                  ),
                    Padding(
                      padding: EdgeInsets.only(top:_formPadding_top),
                      child: LabelTextUserInput(text: "Mobile", color: Colors.black,),
                    ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: UserInputTextFormUniversityAdmin(textEditingController: _textController[1], keyboardType: .name,),
                  ),
                    Padding(
                      padding: EdgeInsets.only(top:_formPadding_top),
                      child: LabelTextUserInput(text: "Email ID", color: Colors.black,),
                    ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: UserInputTextFormUniversityAdmin(textEditingController: _textController[2], keyboardType: .name,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:_formPadding_top),
                    child: ImagePickerColumnDonation(text: "Upload Alumni Photo", requiredFileType: "JPG or PNG, max 2MB",icon: Icon(Icons.upload),),
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
