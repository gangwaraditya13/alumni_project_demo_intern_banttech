import 'package:alumni/features/alumni_dashboard/presentation/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/alumni_dashboard/presentation/widgets/dashboard_widgets/custom_quill_from_flutter_quill.dart';
import 'package:alumni/features/alumni_dashboard/presentation/widgets/image_picker_column_university_admin.dart';
import 'package:alumni/features/alumni_dashboard/presentation/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/alumni_dashboard/presentation/widgets/user_input_dropdown_university_admin.dart';
import 'package:alumni/features/alumni_dashboard/presentation/widgets/user_input_text_form_university_admin.dart';
import 'package:alumni/features/home/presentation/widgets/label_text_user_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class MentorshipEdit extends StatefulWidget {
  MentorshipEdit({super.key});

  @override
  State<MentorshipEdit> createState() => _MentorshipEditState();
}

class _MentorshipEditState extends State<MentorshipEdit> {

  late QuillController _quillController;

  final List<String> statusList = [
    "Active", "Inactive"
  ];

  final status = ValueNotifier<String?>(null);

  DateTime? selectDate1;
  DateTime? selectDate2;

  Future<void> datePick1()async{
    DateTime? picker = await showDatePicker(context: context,firstDate: DateTime(1200), lastDate: DateTime(2300), initialDate: DateTime.now(),);
    if(picker != null){
      selectDate1 = picker;
    }
  }

  Future<void> datePick2()async{
    DateTime? picker = await showDatePicker(context: context,firstDate: DateTime(1200), lastDate: DateTime(2300), initialDate: DateTime.now(),);
    if(picker != null){
      selectDate2 = picker;
    }
  }

  List<TextEditingController> controller = List.generate(3, (index) => TextEditingController(),);

  @override
  void initState() {
    _quillController = QuillController(document: Document()..insert(0, "This donation campaign is dedicated to supporting families and communities affected by natural disasters."), selection: TextSelection.collapsed(offset: 0));
    super.initState();
  }

  @override
  void dispose() {
    _quillController.dispose();
    for(int i=0;i<controller.length;i++){
      controller[i].dispose();
    }

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [ProfileCircularAvatar()],
        title: Text("Edit Mentorship Program", style: TextStyle(fontWeight: .bold, fontSize: 15.sp),),
        centerTitle: true,
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8.r, left: 15.r, right: 15.r),
        child: SingleChildScrollView(
          child:
            Column(
              crossAxisAlignment: .start,
              spacing: 15.r,
              children: [
                LabelTextUserInput(text: "Program Title",color: Colors.black,),
                UserInputTextFormUniversityAdmin(keyboardType: .number, textEditingController: controller[0], hint: Text("Enter the Program title", style: TextStyle(color: Colors.grey),),),
                LabelTextUserInput(text: "Detailed Description",color: Colors.black,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: Colors.grey)
                  ),
                    padding: EdgeInsets.only(right: 8.r, left: 8.r, bottom: 7.r),
                    height:200.w,child: CustomQuillFromFlutterQuill(quillController: _quillController)),
                LabelTextUserInput(text: "From",color: Colors.black,),
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
                          datePick1();
                        },
                        icon: Icon(Icons.date_range, size: 20.r),
                      ),
                    ],
                  ),
                ),
                LabelTextUserInput(text: "To",color: Colors.black,),
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
                            : "1/4/2029",
                      ),
                      IconButton(
                        onPressed: () {
                          datePick2();
                        },
                        icon: Icon(Icons.date_range, size: 20.r),
                      ),
                    ],
                  ),
                ),
                LabelTextUserInput(text: "Location",color: Colors.black,),
                UserInputTextFormUniversityAdmin(keyboardType: .text, textEditingController: controller[1], hint:  Text("Enter the location", style: TextStyle(color: Colors.grey),),),
                LabelTextUserInput(text: "Status",color: Colors.black,),
                UserInputDropdownUniversityAdmin(valueListenable: status, itemList: statusList, hint: Text("Select Status", style: TextStyle(color: Colors.grey),)),
                LabelTextUserInput(text: "Upload Event Photo",color: Colors.black,),
                Column(
                  crossAxisAlignment: .start,
                  spacing: 8.r,
                  children: [
                    ImagePickerColumnUniversityAdmin(text: "Upload Event Photo", icon: Icon(Icons.camera_alt_outlined)),
                    Container(
                      width: 150.w,
                      height: 100.w,
                      clipBehavior: .antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Image.network("https://imgs.search.brave.com/Xu3ZOHDaKo3JS4si46FzWUwwuj0qIwYiwR8u7-DvFgY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTU3/NDM5MzQxL3Bob3Rv/L2ZvcmVzdC1pbGx1/bWluYXRlZC1ieS10/aGUtcmlzaW5nLXN1/bi5qcGc_cz02MTJ4/NjEyJnc9MCZrPTIw/JmM9OEJpakZFNEh4/Z21ucDZZOGhZT2tM/NVlTemtLU2VqSDYx/OVBRUm9STF9LMD0", fit: .cover,),
                    )
                  ],
                ),
                LabelTextUserInput(text: "Enter Online Meeting URL",color: Colors.black,),
                UserInputTextFormUniversityAdmin(keyboardType: .text, textEditingController: controller[2], hint:  Text("Enter online meeting url", style: TextStyle(color: Colors.grey),),),
                CustomAnimationButton(
                  callback: () {
                    Navigator.pop(context);
                  },
                  text: "Update Mentorship Program",
                ),
                SizedBox(height: 20.w),
              ],
            ),
        ),
      ),
    );
  }
}
