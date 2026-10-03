import 'package:alumni/features/alumni_dashboard/screen/profile_dashboard_screen/mentors_dashboard/mentor_university_edit.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/edit_button_sub_university_admin.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/icon_and%20_text.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/status_button_university_admin_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class MentorEditUniversityDashboardCard extends StatelessWidget {
  const MentorEditUniversityDashboardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, blurStyle: .outer, blurRadius: 4,spreadRadius: 1
            )
          ]
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.r),
            child: Container(
              height: 80.w,
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: .start,
                mainAxisAlignment: .spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: .start,
                    spacing: 8.r,
                    children: [
                      Container(
                          height: 80.w,
                          width: 75.w,
                          clipBehavior: .antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Theme.of(context).colorScheme.secondary)
                          ),
                          child: Image.network("https://images.unsplash.com/photo-1530549387789-4c1017266635?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .fill,)
                      ),
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text("Prabhakar Singh", style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Icon(Icons.timer_sharp,size: 15.r, color: Theme.of(context).colorScheme.secondary,),
                              Text(" Jul 1,2024",),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                  StatusButtonUniversityAdminDashboard(buttonColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3), child: Row(
                    spacing: 4.r,
                    children: [
                      Icon(Icons.account_circle_rounded, color: Theme.of(context).colorScheme.secondary,size: 15.r,),
                      Text("Cricket", style: TextStyle(color: Theme.of(context).colorScheme.secondary),)
                    ],))
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom:8.r, left: 8.r, right: 8.r),
            child: Divider(
              color: Colors.grey.withValues(alpha: 0.5),
              height: 2.w,
              thickness: 1.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom:15.r, left: 8.r, right: 8.r,top: 8.r),
            child: Row(
              spacing: 15.r,
              children: [
                IconAndText(text: "9876543212",icons: Icon(Icons.phone, size: 12.r,),),
                IconAndText(text: "Kamalnath12@gmail.com",icons: Icon(Icons.email, size: 12.r,)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom:8.r, left: 8.r, right: 8.r),
            child: EditButtonSubUniversityAdmin(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MentorUniversityEdit(),));
            },),
          )
        ],
      ),
    );
  }
}
