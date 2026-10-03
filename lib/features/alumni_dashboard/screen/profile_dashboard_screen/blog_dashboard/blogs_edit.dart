import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/custom_quill_from_flutter_quill.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/image_picker_column_university_admin.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/user_input_dropdown_university_admin.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/user_input_text_form_university_admin.dart';
import 'package:alumni/features/home/presentation/widgets/label_text_user_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class BlogsEdit extends StatefulWidget {
  const BlogsEdit({super.key});

  @override
  State<BlogsEdit> createState() => _BlogsEditState();
}

class _BlogsEditState extends State<BlogsEdit> {

  final statusList = ["Active", "Inactive"];

  final List<String> categoryList = ["Education", "Student Achievements", "College Event", "Scholarship Program", "Placement Drive", "Campus News", "Admission Guidance"];


  final ValueNotifier<String?> status = ValueNotifier<String?>(null);
  final ValueNotifier<String?> category = ValueNotifier<String?>(null);

  late QuillController _quillController;

  final TextEditingController _titleTextEditingController = TextEditingController(text: "Olympic");

  @override
  void initState() {
    super.initState();
    _quillController = QuillController(document: Document()..insert(0, "asdfghjklwergh"), selection: TextSelection.collapsed(offset: 0));
  }

  @override
  void dispose() {
    _quillController.dispose();
    _titleTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Blog", style: TextStyle(fontWeight: .bold),),
        centerTitle: true,
        actions: [
          ProfileCircularAvatar()
        ],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 8.r),
              child: Column(
                crossAxisAlignment: .start,
                spacing: 12.r,
                children: [
                  ImagePickerColumnUniversityAdmin(text: "Upload Blog Photo", icon: Icon(Icons.upload)),
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
                  UserInputTextFormUniversityAdmin(keyboardType: .name, textEditingController: _titleTextEditingController),
                  LabelTextUserInput(text: "Category", color: Colors.black,),
                  UserInputDropdownUniversityAdmin(valueListenable: category, itemList: categoryList, hint: Text("Select Category")),
                  LabelTextUserInput(text: "Detailed Description", color: Colors.black,),
                  Container(
                    height: 250.w,
                    padding: EdgeInsets.only(left: 8.r, right: 8.r,bottom: 8.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: Colors.grey)
                    ),
                    child: CustomQuillFromFlutterQuill(quillController: _quillController),
                  ),
                  LabelTextUserInput(text: "Status", color: Colors.black,),
                  UserInputDropdownUniversityAdmin(valueListenable: status, itemList: statusList, hint: Text("select Status"))
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only( bottom: 10.r, left: 15.r, right: 15.r),
            width: MediaQuery.of(context).size.width,
            height: 45.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Theme.of(context).colorScheme.secondary
            ),
            child: Center(child: Text("Update Blog", style: TextStyle(fontWeight: .bold, fontSize: 16.sp, color: Theme.of(context).colorScheme.surface),)),
          )
        ],
      ),
    );
  }
}
