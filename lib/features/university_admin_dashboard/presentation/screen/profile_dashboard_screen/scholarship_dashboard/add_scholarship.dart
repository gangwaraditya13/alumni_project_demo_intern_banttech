import 'package:alumni/features/home/presentation/widgets/label_text_user_input.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/image_picker_column_university_admin.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/user_input_text_form_university_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AddScholarship extends StatefulWidget {
  const AddScholarship({super.key});

  @override
  State<AddScholarship> createState() => _AddScholarshipState();
}

class _AddScholarshipState extends State<AddScholarship> {

  final TextEditingController _titleTextEditingController = TextEditingController();
  final TextEditingController _descriptionTextEditingController = TextEditingController();

  DateTime? selectDate1;
  DateTime? selectDate2;

  Future<void> pickDate1()async{
    DateTime? pick = await showDatePicker(context: context, firstDate: DateTime(2000), lastDate: DateTime(2101), initialDate: DateTime.now());
    if(pick != null){
      selectDate1 = pick;
      setState(() {
      });
    }
  }

  Future<void> pickDate2()async{
    DateTime? pick = await showDatePicker(context: context, firstDate: DateTime(2000), lastDate: DateTime(2101), initialDate: DateTime.now());
    if(pick != null){
      selectDate2 = pick;
      setState(() {
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 15.r),
        actions: [
          ProfileCircularAvatar(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8.r, bottom: 10.r, left: 15.r, right: 15.r),
        child: Column(
          mainAxisAlignment: .spaceBetween,
          children: [
            Column(
              crossAxisAlignment: .start,
              spacing: 12.r,
              children: [
                ImagePickerColumnUniversityAdmin(text: "Upload Scholarship Photo", icon: Icon(Icons.camera_alt_outlined)),
                Container(
                  height: 100.w,
                  width: 150.w,
                  clipBehavior: .antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r)
                  ),
                  child: Image.network("https://plus.unsplash.com/premium_photo-1721755992476-3df0ab7188c2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
                ),
                LabelTextUserInput(text: "Title", color: Colors.black,),
                UserInputTextFormUniversityAdmin(keyboardType: .name, textEditingController: _titleTextEditingController, hint: Text("Enter title", style: TextStyle(color: Colors.grey),),),
                LabelTextUserInput(text: "Description", color: Colors.black,),
                UserInputTextFormUniversityAdmin(keyboardType: .name, textEditingController: _descriptionTextEditingController, hint: Text("Description...", style: TextStyle(color: Colors.grey),),),
                LabelTextUserInput(text: "Open From", color: Colors.black,),
                Container(
                  padding: EdgeInsets.only(
                    left: 15.r,
                    right: 15.r,
                    top: 1.r,
                    bottom: 1.r,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: Colors.grey.withValues(alpha: 0.5)),
                  ),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        selectDate1 != null
                            ? "${selectDate1!.day}-${selectDate1!.month}-${selectDate1!.year}"
                            : "Pick date",
                      ),
                      IconButton(
                        onPressed: () {
                          pickDate1();
                        },
                        icon: Icon(Icons.date_range, size: 20.r),
                      ),
                    ],
                  ),
                ),
                LabelTextUserInput(text: "End Date", color: Colors.black,),
                Container(
                  padding: EdgeInsets.only(
                    left: 15.r,
                    right: 15.r,
                    top: 1.r,
                    bottom: 1.r,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: Colors.grey.withValues(alpha: 0.5)),
                  ),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        selectDate2 != null
                            ? "${selectDate2!.day}-${selectDate2!.month}-${selectDate2!.year}"
                            : "Pick date",
                      ),
                      IconButton(
                        onPressed: () {
                          pickDate2();
                        },
                        icon: Icon(Icons.date_range, size: 20.r),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomAnimationButton(callback: (){
              Navigator.pop(context);
            }, text: "Add Scholarship"),
          ],
        ),
      ),
    );
  }
}
