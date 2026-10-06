import 'package:alumni/features/university_admin_dashboard/presentation/screen/profile_dashboard_screen/scholarship_dashboard/add_scholarship.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/app_bar_icon.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/scholarship_widget/manage_scholarship_dashboard_card.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/profile_circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ManageScholarshipDashboard extends StatelessWidget {
  const ManageScholarshipDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manage Scholarship", style: TextStyle(fontSize: 15.sp),textAlign: .start,),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: AppBarIcon(icons: Icon(Icons.add, size: 15.r),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddScholarship(),));
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
      body: ListView.builder(itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(left:15.r, right: 15.r, bottom: 8.r),
        child: ManageScholarshipDashboardCard(),
      ), itemCount: 5,),
    );
  }
}
