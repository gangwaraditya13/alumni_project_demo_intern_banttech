import 'package:alumni/features/home/presentation/widgets/label_text_user_input.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/custom_quill_from_flutter_quill.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/user_input_dropdown_university_admin.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/user_input_text_form_university_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AddBlog extends StatefulWidget {
  const AddBlog({super.key});

  @override
  State<AddBlog> createState() => _AddBlogState();
}

class _AddBlogState extends State<AddBlog> {
  final TextEditingController _campaignTextEditingController =
  TextEditingController();

  final List<String> campaignCategoryList = [
    'AM University',
    'Siddhi Vinayak',
    'Stayam',
    'Akash',
  ];

  final List<String> statusList = ['Active', 'Inactive'];

  final ValueNotifier<String?> status = ValueNotifier<String?>(null);

  final ValueNotifier<String?> campaignCategory = ValueNotifier<String?>(null);

  late final QuillController _quillController;

  @override
  void initState() {
    super.initState();

    _quillController = QuillController(
      document: Document(),
      selection: TextSelection.collapsed(offset: 0),
    );
  }

  @override
  void dispose() {
    _campaignTextEditingController.dispose();
    campaignCategory.dispose();
    _quillController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    TextStyle _formHintStyle = TextStyle(color: Colors.grey, fontWeight: .bold);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Blog",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [ProfileCircularAvatar()],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),

      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150.w,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: Colors.grey)
                    ),
                    child: Column(
                      mainAxisAlignment: .center,
                      crossAxisAlignment: .center,
                      spacing: 10.r,
                      children: [
                        Icon(Icons.upload, color: Theme.of(context).colorScheme.secondary,),
                        Text("Upload Event Photo", style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontWeight: .bold),),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),

                  LabelTextUserInput(text: "Title", color: Colors.black),

                  SizedBox(height: 8.h),

                  UserInputTextFormUniversityAdmin(keyboardType: .name, textEditingController: _campaignTextEditingController, hint:  Text("Enter Cause title", style: _formHintStyle,),),

                  SizedBox(height: 20.h),
                  LabelTextUserInput(text: "Category", color: Colors.black),
                  SizedBox(height: 8.h),
                  UserInputDropdownUniversityAdmin(
                    valueListenable: campaignCategory,
                    itemList: campaignCategoryList,
                    hint: Text("Select Category"),
                    colors: Colors.grey.shade400,
                  ),
                  SizedBox(height: 20.h),

                  LabelTextUserInput(
                    text: "Detailed Description",
                    color: Colors.black,
                  ),

                  SizedBox(height: 8.h),

                  // Quill Editor
                  Container(
                    height: 250.h,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(bottom:10.r, left: 10.r, right: 10.r),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: CustomQuillFromFlutterQuill(
                      quillController: _quillController,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  LabelTextUserInput(text: "Status", color: Colors.black),
                  UserInputDropdownUniversityAdmin(valueListenable: status, itemList: statusList, hint: Text("Select status"),
                    colors: Colors.grey.shade400,)
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: CustomAnimationButton(callback: (){
              Navigator.pop(context);
            }, text: "Add Blog"),
          ),
          SizedBox(
            height: 10.w,
          )
        ],
      ),
    );
  }
}

