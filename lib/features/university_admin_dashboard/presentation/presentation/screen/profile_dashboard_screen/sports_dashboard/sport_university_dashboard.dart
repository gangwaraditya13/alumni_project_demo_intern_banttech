import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/sports_dashboard/app_sport_university.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/app_bar_icon.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/sports_widget/sports_edit_university_dashboard_card.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/profile_circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class SportUniversityDashboard extends StatelessWidget {
  const SportUniversityDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sport", style: TextStyle(fontSize: 15.sp),textAlign: .start,),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: AppBarIcon(icons: Icon(Icons.add, size: 15.r), onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AppSportUniversity(),));
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
        padding: EdgeInsets.only(left: 15.r, right: 15.r),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.3), itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(5.r),
          child: SportsEditUniversityDashboardCard(),
        ),itemCount: 11,),
      ),
    );
  }
}
