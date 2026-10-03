import 'package:alumni/features/alumni_dashboard/screen/profile_dashboard_screen/university_courses/university_courses_edit.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/edit_button_sub_university_admin.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/status_button_university_admin_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class UniversityCourseEditCard extends StatelessWidget {
  const UniversityCourseEditCard({super.key});

  @override
  Widget build(BuildContext context) {

    TextStyle _statusButtonStyle = TextStyle(color: Colors.green);

    return Container(
      height: 290.w,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 3, blurStyle: .outer, spreadRadius: 1),
        ],
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Container(
            height: 170.w,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            ),
            clipBehavior: .antiAlias,
            child: Image.network("https://plus.unsplash.com/premium_photo-1661868906940-5d8443acf49e?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
          ),
          Padding(
            padding: EdgeInsets.all(7.r),
            child: Column(
              crossAxisAlignment: .start,
              spacing: 12.r,
              children: [
                Text("Diploma in Engineering", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text("Mar 15,2024", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    StatusButtonUniversityAdminDashboard(buttonColor: Colors.green.withValues(alpha: 0.5), child: Text("Active", style: _statusButtonStyle,),),
                  ],
                ),
                EditButtonSubUniversityAdmin(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UniversityCoursesEdit(),));
                },)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
