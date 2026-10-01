import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/university_courses/add_university_courses.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/app_bar_icon.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/university_courses_widget/university_course_edit_card.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/profile_circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class UniversityCoursesDashboard extends StatelessWidget {
  const UniversityCoursesDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("University Courses", style: TextStyle(fontSize: 15.sp),textAlign: .start,),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: AppBarIcon(icons: Icon(Icons.add, size: 15.r), onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddUniversityCourses(),));
            },),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: AppBarIcon(icons: Icon(Icons.search, size: 15.r)),
          ),
          ProfileCircularAvatar()
        ],
        actionsPadding: EdgeInsets.only(right: 8.r),
      ),
      body: ListView.builder(itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(top:8.r, left: 15.r, right: 15.r, bottom: 4.r),
        child: UniversityCourseEditCard(),
      ), itemCount: 5,),
    );
  }
}
