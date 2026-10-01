import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/scholarship_widget/info_screen_widgets/heading_row_info.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/scholarship_widget/info_screen_widgets/personal_info_detail_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15.r),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Theme.of(context).colorScheme.surface
          ),
          child: Column(
            spacing: 20.r,
            children: [
              Row(
                spacing: 8.r,
                children: [
                  Container(
                    padding: EdgeInsets.only(top:8.r, bottom: 8.r, left: 15.r, right: 15.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Colors.redAccent.shade700,
                    ),
                    child: Text("1", style: TextStyle(color: Theme.of(context).colorScheme.surface, fontWeight: FontWeight.bold),),

                  ),
                  Text("Personal Information", style: TextStyle(color: Colors.redAccent.shade700, fontWeight: .bold, fontSize: 19.sp),)
                ],
              ),
              HeadingRowInfo(height: 20.w, widget: Text("BASIC DETAILS", style: TextStyle(fontWeight: .bold, fontSize: 16.sp),),),
              Column(
                spacing: 8.r,
                children: [
                  PersonalInfoDetailTile(width: MediaQuery.of(context).size.width,title: "FULL NAME", info: "Honey Singh", infoFontSize: 16.sp, titleFontSize: 13.sp,),
                  PersonalInfoDetailTile(width: MediaQuery.of(context).size.width,title: "DATE OF BIRTH", info: "2026-05-26", infoFontSize: 16.sp, titleFontSize: 13.sp,),
                  PersonalInfoDetailTile(width: MediaQuery.of(context).size.width,title: "NATIONALITY", info: "Barbadian", infoFontSize: 16.sp, titleFontSize: 13.sp,),
                  PersonalInfoDetailTile(width: MediaQuery.of(context).size.width,title: "GENDER", info: "Male", infoFontSize: 16.sp, titleFontSize: 13.sp,),
                ],
              ),
              Divider(color: Colors.grey.shade300,),
              HeadingRowInfo(widget: Text("CONTACT INFORMATION", style: TextStyle(fontWeight: .bold, fontSize: 16.sp),), height: 20.w),
              Column(
                spacing: 8.r,
                children: [
                  PersonalInfoDetailTile(width: MediaQuery.of(context).size.width,title: "EMAIL", info: "honeybanttech@gmail.com", infoFontSize: 16.sp, titleFontSize: 13.sp,),
                  PersonalInfoDetailTile(width: MediaQuery.of(context).size.width,title: "PHONE NUMBER", info: "8218111039", infoFontSize: 16.sp, titleFontSize: 13.sp,),
                  PersonalInfoDetailTile(width: MediaQuery.of(context).size.width,title: "ADDRESS", info: "Vill Nagla Sharki Badaun, BADAUN, Uttar Pradesh, 2243601", infoFontSize: 16.sp, titleFontSize: 13.sp,),
                ],
              ),
            ],
          ),
        ),
        Container(height: 30.w,)
      ],
    );
  }
}
