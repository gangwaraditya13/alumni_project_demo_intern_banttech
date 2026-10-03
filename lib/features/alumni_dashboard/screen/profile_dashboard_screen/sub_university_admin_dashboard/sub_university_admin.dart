import 'package:alumni/features/alumni_dashboard/screen/profile_dashboard_screen/sub_university_admin_dashboard/add_sub_university_admin.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/app_bar_icon.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/sub_university_admin_widget/sub_university_admin_card.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/profile_circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class SubUniversityAdmin extends StatelessWidget {
  const SubUniversityAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sub-University Admin", style: TextStyle(fontSize: 15.sp),textAlign: .start,),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: AppBarIcon(icons: Icon(Icons.add, size: 15.r), onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddSubUniversityAdmin(),));
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
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: EdgeInsets.only(top:4.r, ),
        child: ListView.builder(itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(bottom: 15.r, left: 15.r, right: 15.r),
          child: SubUniversityAdminCard(),
        ),itemCount: 5,),
      ),
    );
  }
}
