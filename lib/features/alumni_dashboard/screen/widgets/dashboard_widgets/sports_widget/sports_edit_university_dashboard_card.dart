import 'package:alumni/features/alumni_dashboard/screen/profile_dashboard_screen/sports_dashboard/sport_university_edit.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/status_button_university_admin_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class SportsEditUniversityDashboardCard extends StatelessWidget {
  const SportsEditUniversityDashboardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.grey.withValues(alpha: 0.6), spreadRadius: 1, blurRadius: 8, blurStyle: .outer),
        ]
      ),
      child: Padding(
        padding: EdgeInsets.all(7.r),
        child: Column(
          spacing: 2.r,
          children: [
            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/6.109,
                  child: Column(
                    spacing: 4.r,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        foregroundImage: NetworkImage("https://images.unsplash.com/photo-1721206625310-5fe6854961d8?q=80&w=1058&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                      ),

                      Text("Football",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),),
                    ],
                  ),
                ),
                Container(
                  height: 64.w,
                  width: MediaQuery.of(context).size.width/4.5,
                  child: Column(
                    mainAxisAlignment: .start,
                    crossAxisAlignment: .end,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SportUniversityEdit(),));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.2),
                              borderRadius: BorderRadius.circular(5.r)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(3.r),
                            child: Icon(Icons.edit_note,size: 15.r,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text("Mar 15,2024",style: TextStyle(fontSize: 14.sp),),
                StatusButtonUniversityAdminDashboard(buttonColor: Colors.green.withValues(alpha: 0.3), child: Text("outdoor", style: TextStyle( color: Colors.green, fontSize: 14.sp),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
