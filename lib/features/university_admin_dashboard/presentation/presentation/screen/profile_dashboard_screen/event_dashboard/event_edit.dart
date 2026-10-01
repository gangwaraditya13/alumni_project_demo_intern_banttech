import 'package:alumni/features/home/presentation/widgets/label_text_user_input.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/custom_quill_from_flutter_quill.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/image_picker_column_university_admin.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/user_input_dropdown_university_admin.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/user_input_text_form_university_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class EventEdit extends StatefulWidget {
  const EventEdit({super.key});

  @override
  State<EventEdit> createState() => _EventEditState();
}

class _EventEditState extends State<EventEdit> {

  final TextEditingController _titleTextEditingController = TextEditingController(text: "Olympic");

  final List<String> categoryList = ["Education", "Student Achievements", "College Event", "Scholarship Program", "Placement Drive", "Campus News", "Admission Guidance"];

  final List<String> statusList = ["Active", "inactive"];

  final ValueNotifier<String?> category =  ValueNotifier<String?>(null);
  final ValueNotifier<String?> status =  ValueNotifier<String?>(null);

  late final QuillController _quillController;

  DateTime ?selectDate1;
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
  void initState() {
    super.initState();
    _quillController = QuillController(document: Document()..insert(0, "m,b lkjhs"), selection: TextSelection.collapsed(offset: 0));
  }

  @override
  void dispose() {
    _titleTextEditingController.dispose();
    _quillController.dispose();
    category.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Update Event",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [ProfileCircularAvatar()],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),

      body: SafeArea(
        child: Column(
          spacing: 8.r,
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 8.r, horizontal: 15.r),
                child: Column(
                  spacing: 8.r,
                  crossAxisAlignment: .start,
                  children: [
                    ImagePickerColumnUniversityAdmin(
                      text: "Upload Event Photo",
                      icon: Icon(Icons.upload),
                    ),
                    Container(
                      height: 100.w,
                      width: 150.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      clipBehavior: .antiAlias,
                      child: Image.network(
                        "https://plus.unsplash.com/premium_photo-1661953418575-044d4f41c9cd?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        fit: .cover,
                      ),
                    ),
                    LabelTextUserInput(text: "Title", color: Colors.black,),
                    UserInputTextFormUniversityAdmin(keyboardType: .name, textEditingController: _titleTextEditingController,),
                    LabelTextUserInput(text: "Category", color: Colors.black,),
                    UserInputDropdownUniversityAdmin(valueListenable: category, itemList: categoryList, hint: Text("Select Category")),
                    LabelTextUserInput(text: "Detailed Description", color: Colors.black,),
                    Container(
                        height: 300.w,
                        padding:EdgeInsets.only(bottom: 8.r, left: 8.r, right: 8.r),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: Colors.grey)
                        ),
                        child: CustomQuillFromFlutterQuill(quillController: _quillController)
                    ),
                    LabelTextUserInput(text: "Event Start", color: Colors.black,),
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
                                : "1/4/2029",
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
                    LabelTextUserInput(text: "End Start", color: Colors.black,),
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
                                : "1/4/2026",
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
                    LabelTextUserInput(text: "Status", color: Colors.black,),
                    UserInputDropdownUniversityAdmin(valueListenable: status, itemList: statusList, hint: Text("Select Status"))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only( bottom: 8.r, left: 15.r, right: 15.r),
              width: MediaQuery.of(context).size.width,
              height: 45.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Theme.of(context).colorScheme.secondary
              ),
              child: Center(child: Text("Update Event", style: TextStyle(fontWeight: .bold, fontSize: 16.sp, color: Theme.of(context).colorScheme.surface),)),
            )
          ],
        ),
      ),
    );
  }
}
