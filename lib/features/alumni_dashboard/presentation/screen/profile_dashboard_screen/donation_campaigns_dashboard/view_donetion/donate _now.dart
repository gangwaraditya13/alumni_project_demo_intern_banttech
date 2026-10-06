import 'package:alumni/features/alumni_dashboard/presentation/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/alumni_dashboard/presentation/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/alumni_dashboard/presentation/widgets/user_input_text_form_university_admin.dart';
import 'package:alumni/features/home/presentation/widgets/label_text_user_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class DonateNow extends StatelessWidget {
  DonateNow({super.key});

  @override
  Widget build(BuildContext context) {

    final TextStyle _hintStyle = TextStyle(color: Colors.grey);

    List<TextEditingController> controller = List.generate(4, (index) => TextEditingController(),);

    List<Widget> hint = [
      Text("Enter your name", style: _hintStyle,),
      Text("Enter your email", style: _hintStyle,),
      Text("Enter your mobile", style: _hintStyle,),
      Text("Enter your donation amount", style: _hintStyle,),
    ];

    List<Widget> label = [
      LabelTextUserInput(text: "Name", color: Colors.black,),
      LabelTextUserInput(text: "Email", color: Colors.black,),
      LabelTextUserInput(text: "Mobile", color: Colors.black,),
      LabelTextUserInput(text: "Donation Amount", color: Colors.black,),
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          ProfileCircularAvatar()
        ],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),
      body: Padding(
        padding: EdgeInsets.only(left:15.r, right: 15.r, bottom: 10.r, top: 5.r),
        child: Column(
          mainAxisAlignment: .spaceBetween,
          children: [
            Column(
              spacing: 12.r,
              crossAxisAlignment: .start,
              children: [
                Text("Donate Now", style: TextStyle(fontSize: 21.sp, fontWeight: .bold, color: Theme.of(context).colorScheme.secondary),),
                Column(
                  spacing: 5.r,
                  crossAxisAlignment: .start,
                  children: [
                    label[0],
                    UserInputTextFormUniversityAdmin(keyboardType: .name, textEditingController: controller[0], hint: hint[0],),
                    label[1],
                    UserInputTextFormUniversityAdmin(keyboardType: .emailAddress, textEditingController: controller[1], hint: hint[1],),
                    label[2],
                    UserInputTextFormUniversityAdmin(keyboardType: .phone, textEditingController: controller[2], hint: hint[2],),
                    label[3],
                    UserInputTextFormUniversityAdmin(keyboardType: .number, textEditingController: controller[3], hint: hint[3],),
                  ],
                ),
              ],
            ),
            CustomAnimationButton(callback: (){
              Navigator.pop(context);
            }, text: "Donate Now")
          ],
            ),
      ),
    );
  }
}
