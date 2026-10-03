import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/custom_quill_from_flutter_quill.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/manage_donation_widget/image_picker_column_donation.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/user_input_dropdown_university_admin.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/user_input_text_form_university_admin.dart';
import 'package:alumni/features/home/presentation/widgets/label_text_user_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' hide Text;
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ManageDonationEdit extends StatefulWidget {
  const ManageDonationEdit({super.key});

  @override
  State<ManageDonationEdit> createState() => _ManageDonationEditState();
}

class _ManageDonationEditState extends State<ManageDonationEdit> {
  final TextEditingController _campaignTextEditingController =
      TextEditingController(text: "Olympic");

  final TextEditingController _summeryTextEditingController =
      TextEditingController();
  final TextEditingController _metaTitleTextEditingController =
      TextEditingController();
  final TextEditingController _metaDescTextEditingController =
      TextEditingController();
  final TextEditingController _videoUrlTextEditingController =
      TextEditingController();
  final TextEditingController _targetAmountTextEditingController =
      TextEditingController();
  final TextEditingController _minDocumentAmountTextEditingController =
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
      document: Document()
        ..insert(
          0,
          'This donation campaign is dedicated to supporting families and communities affected by natural disasters',
        ),
      selection: const TextSelection.collapsed(offset: 0),
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

    TextStyle _formHintStyle = TextStyle(color: Colors.grey);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Donation Campaign",
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
                  LabelTextUserInput(text: "Donation Photo", color: Colors.black),

                  SizedBox(height: 8.h),

                  ImagePickerColumnDonation(
                    icon: const Icon(Icons.upload),
                    text: "Upload Donation Photo",
                    requiredFileType: "JPG or PNG, max 2MB",
                  ),

                  SizedBox(height: 12.h),

                  Container(
                    height: 100.w,
                    width: 150.w,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Image.network(
                      "https://plus.unsplash.com/premium_photo-1661953418575-044d4f41c9cd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(height: 20.h),

                  LabelTextUserInput(text: "Gallery Image", color: Colors.black),

                  SizedBox(height: 8.h),

                  ImagePickerColumnDonation(
                    requiredFileType: "Multiple Images Supported",
                    text: "Upload Gallery Images",
                    icon: const Icon(Icons.image),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    spacing: 8.r,
                    children: [
                      Container(
                        height: 100.w,
                        width: 150.w,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Image.network(
                          "https://plus.unsplash.com/premium_photo-1661953418575-044d4f41c9cd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 100.w,
                        width: 150.w,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Image.network(
                          "https://plus.unsplash.com/premium_photo-1661953418575-044d4f41c9cd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  LabelTextUserInput(text: "Campaign Title", color: Colors.black),

                  SizedBox(height: 8.h),

                  TextField(
                    controller: _campaignTextEditingController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),

                  SizedBox(height: 20.h),
                  LabelTextUserInput(text: "Campaign Category", color: Colors.black),
                  SizedBox(height: 8.h),
                  UserInputDropdownUniversityAdmin(
                    valueListenable: campaignCategory,
                    itemList: campaignCategoryList,
                    hint: Text("Select Category"),
                  ),
                  SizedBox(height: 20.h),

                  LabelTextUserInput(
                    text: "Campaign Description",
                    color: Colors.black,
                  ),

                  SizedBox(height: 8.h),

                  // Quill Editor
                  Container(
                    height: 250.h,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10.r),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: CustomQuillFromFlutterQuill(
                      quillController: _quillController,
                    ),
                  ),

                  SizedBox(height: 30.h),

                  LabelTextUserInput(
                    text: "Short Description / Summary",
                    color: Colors.black,
                  ),
                  SizedBox(height: 8.h),
                  UserInputTextFormUniversityAdmin(
                    keyboardType: .text,
                    textEditingController: _summeryTextEditingController,
                    maxLines: 3,
                    maxLength: 200,
                    hint: Text(
                      "Write short summary (max 200 characters)",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  LabelTextUserInput(text: "Meta Title", color: Colors.black),
                  SizedBox(height: 8.h),
                  UserInputTextFormUniversityAdmin(
                    keyboardType: .text,
                    textEditingController: _metaTitleTextEditingController,
                    hint: Text(
                      "Enter meta title",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  LabelTextUserInput(text: "Meta Description", color: Colors.black),
                  SizedBox(height: 8.h),
                  UserInputTextFormUniversityAdmin(
                    keyboardType: .text,
                    textEditingController: _metaDescTextEditingController,
                    hint: Text(
                      "write meta Description",
                      style: TextStyle(color: Colors.grey),
                    ),
                    maxLines: 4,
                  ),
                  SizedBox(height: 30.h),
                  LabelTextUserInput(text: "Video URL", color: Colors.black),
                  SizedBox(height: 8.h),
                  UserInputTextFormUniversityAdmin(
                    keyboardType: .url,
                    textEditingController: _videoUrlTextEditingController,
                    hint: Text("Example - campaign url", style: _formHintStyle,),
                  ),
                  SizedBox(height: 30.h),
                  LabelTextUserInput(text: "Target Amount", color: Colors.black),
                  SizedBox(height: 8.h),
                  UserInputTextFormUniversityAdmin(
                    keyboardType: .number,
                    textEditingController: _targetAmountTextEditingController,
                    hint: Text("49989", style: _formHintStyle,),
                  ),
                  SizedBox(height: 30.h),
                  LabelTextUserInput(
                    text: "Minimum Document Amount",
                    color: Colors.black,
                  ),
                  SizedBox(height: 8.h),
                  UserInputTextFormUniversityAdmin(
                    keyboardType: .number,
                    textEditingController: _minDocumentAmountTextEditingController,
                    hint: Text("49989", style: _formHintStyle,),
                  ),
                  SizedBox(height: 30.h),
                  LabelTextUserInput(text: "Valid Form", color: Colors.black),
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
                              : "Pick date",
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
                  LabelTextUserInput(text: "Valid Upto", color: Colors.black),
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
                              : "Pick date",
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
            }, text: "Update Donation Campaign(s)"),
          ),
          SizedBox(
            height: 10.w,
          )
        ],
      ),
    );
  }
}
