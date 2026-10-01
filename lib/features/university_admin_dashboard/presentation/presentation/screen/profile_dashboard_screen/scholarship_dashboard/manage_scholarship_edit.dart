import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/scholarship_widget/mandatory_text.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/image_picker_column_university_admin.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/user_input_text_form_university_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ManageScholarshipEdit extends StatefulWidget {
  ManageScholarshipEdit({super.key});

  @override
  State<ManageScholarshipEdit> createState() => _ManageScholarshipEditState();
}

class _ManageScholarshipEditState extends State<ManageScholarshipEdit> {
  TextEditingController _titleController = TextEditingController(text: "Merit excellence scholarship");

  TextEditingController _descriptionController = TextEditingController(text: "Financial assestance provided to student from economically weaker sections to support their higher education journey");

  DateTime? _selectedDate1;
  DateTime? _selectedDate2;

  Future<void> _selectDate1(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      _selectedDate1 =picked;
      setState(() {
      });
    }
  }

  Future<void> _selectDate2(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      _selectedDate2 =picked;
      setState(() {
      });
    }
  }


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
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: EdgeInsets.all(15.r),
        child: Column(
          mainAxisAlignment: .spaceBetween,
          children: [
            Column(
              spacing: 10.r,
              crossAxisAlignment: .start,
              children: [
                ImagePickerColumnUniversityAdmin(text: "Upload Scholarship Photo", icon: Icon(Icons.camera_alt_outlined)),
                Container(
                  height: 100.w,
                  width: 150.w,
                  clipBehavior: .antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Image.network("https://plus.unsplash.com/premium_photo-1721755992476-3df0ab7188c2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
                ),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    MandatoryText(title: "Title",),
                    UserInputTextFormUniversityAdmin(keyboardType: .name, textEditingController: _titleController, ),
                  ],
                ),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    MandatoryText(title: "Description",),
                    UserInputTextFormUniversityAdmin(keyboardType: .name, textEditingController: _descriptionController, maxLines: 6,),
                  ],
                ),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    MandatoryText(title: "Open From",),
                    Container(
                      padding: EdgeInsets.only(left:15.r, right: 15.r, top: 1.r, bottom: 1.r),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: Colors.grey.withValues(alpha: 0.5))
                      ),
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text(_selectedDate1 != null ?"${_selectedDate1!.day}-${_selectedDate1!.month}-${_selectedDate1!.year}":"01-12-2020"),
                          IconButton(onPressed: (){
                            _selectDate1(context);
                          }, icon: Icon(Icons.date_range, size: 20.r,))
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    MandatoryText(title: "End Date",),
                    Container(
                      padding: EdgeInsets.only(left:15.r, right: 15.r, top: 1.r, bottom: 1.r),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: Colors.grey.withValues(alpha: 0.5))
                      ),
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text(_selectedDate2 != null ?"${_selectedDate2!.day}-${_selectedDate2!.month}-${_selectedDate2!.year}":"2-10-2023"),
                          IconButton(onPressed: (){
                            _selectDate1(context);
                          }, icon: Icon(Icons.date_range, size: 20.r,))
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            CustomAnimationButton(callback: (){
              Navigator.pop(context);
            }, text: "Update Scholarship")
          ],
        ),
      ),
    );
  }
}
