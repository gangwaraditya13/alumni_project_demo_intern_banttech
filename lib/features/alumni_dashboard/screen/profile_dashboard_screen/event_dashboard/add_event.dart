import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/custom_quill_from_flutter_quill.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/user_input_dropdown_university_admin.dart';
import 'package:alumni/features/home/presentation/widgets/label_text_user_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
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
      _selectedDate1 = picked;
      setState(() {});
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
      _selectedDate2 = picked;
      setState(() {});
    }
  }

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
          "Add Event",
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

                  TextField(
                    controller: _campaignTextEditingController,
                    decoration: InputDecoration(
                      hint: Text("Enter Cause title", style: _formHintStyle,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),

                  SizedBox(height: 20.h),
                  LabelTextUserInput(text: "Category", color: Colors.black),
                  SizedBox(height: 8.h),
                  UserInputDropdownUniversityAdmin(
                    valueListenable: campaignCategory,
                    itemList: campaignCategoryList,
                    hint: Text("Select Category"),
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
                  LabelTextUserInput(text: "Event Start", color: Colors.black),
                  SizedBox(height: 8.h),
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
                          _selectedDate1 != null
                              ? "${_selectedDate1!.day}-${_selectedDate1!.month}-${_selectedDate1!.year}"
                              : "dd-mm-yyy",
                        ),
                        IconButton(
                          onPressed: () {
                            _selectDate1(context);
                          },
                          icon: Icon(Icons.date_range, size: 20.r),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30.h),
                  LabelTextUserInput(text: "Event End", color: Colors.black),
                  SizedBox(height: 8.h),
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
                          _selectedDate2 != null
                              ? "${_selectedDate2!.day}-${_selectedDate2!.month}-${_selectedDate2!.year}"
                              : "dd-mm-yyy",
                        ),
                        IconButton(
                          onPressed: () {
                            _selectDate2(context);
                          },
                          icon: Icon(Icons.date_range, size: 20.r),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30.h),
                  LabelTextUserInput(text: "Status", color: Colors.black),
                  UserInputDropdownUniversityAdmin(valueListenable: status, itemList: statusList, hint: Text("Select status"))
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: CustomAnimationButton(callback: (){
              Navigator.pop(context);
            }, text: "Add Event"),
          ),
          SizedBox(
            height: 10.w,
          )
        ],
      ),
    );
  }
}
