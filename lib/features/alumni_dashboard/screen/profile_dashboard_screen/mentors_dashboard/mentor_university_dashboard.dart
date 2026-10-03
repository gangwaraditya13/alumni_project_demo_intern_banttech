import 'package:alumni/features/alumni_dashboard/screen/profile_dashboard_screen/mentors_dashboard/add_mentor.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/app_bar_icon.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/mentor_widget/mentor_edit_university_dashboard_card.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/profile_circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class MentorUniversityDashboard extends StatelessWidget {
  const MentorUniversityDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mentor", style: TextStyle(fontSize: 15.sp),textAlign: .start,),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: AppBarIcon(icons: Icon(Icons.add, size: 15.r), onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddMentor(),));
            },),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: AppBarIcon(icons: Icon(Icons.search, size: 15.r)),
          ),
          ProfileCircularAvatar()
        ],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),
      body: Padding(
        padding: EdgeInsets.only(top:8.r),
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(top:1.r,bottom: 18.r, left: 15.r, right: 15.r),
            child: MentorEditUniversityDashboardCard(),
          ),itemCount: 5,),
      ),
    );
  }
}
