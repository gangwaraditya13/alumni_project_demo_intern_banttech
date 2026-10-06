import 'package:alumni/features/alumni_dashboard/presentation/screen/profile_dashboard_screen/mentors_dashboard/mentorship_edit.dart';
import 'package:alumni/features/alumni_dashboard/presentation/screen/profile_dashboard_screen/mentors_dashboard/view_mentorship.dart';
import 'package:alumni/features/alumni_dashboard/presentation/widgets/dashboard_widgets/view_edit_bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class MentorEditUniversityDashboardCard extends StatelessWidget {
  const MentorEditUniversityDashboardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: .antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, blurStyle: .outer, blurRadius: 4,spreadRadius: 1
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Container(
            height: 200.w,
            width: MediaQuery.of(context).size.width,
            child: Image.network("https://imgs.search.brave.com/Xu3ZOHDaKo3JS4si46FzWUwwuj0qIwYiwR8u7-DvFgY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTU3/NDM5MzQxL3Bob3Rv/L2ZvcmVzdC1pbGx1/bWluYXRlZC1ieS10/aGUtcmlzaW5nLXN1/bi5qcGc_cz02MTJ4/NjEyJnc9MCZrPTIw/JmM9OEJpakZFNEh4/Z21ucDZZOGhZT2tM/NVlTemtLU2VqSDYx/OVBRUm9STF9LMD0", fit: .cover,),
          ),
          Padding(
            padding: EdgeInsets.all(15.r),
            child: Column(
              spacing: 8.r,
              crossAxisAlignment: .start,
              children: [
                Row(
                  spacing: 80.r,
                  children: [
                    Row(
                      spacing: 5.r,
                      children: [
                        Icon(Icons.calendar_month, color: Theme.of(context).colorScheme.secondary,),
                        Text("28-May-2026", style: TextStyle(fontWeight: .bold),)
                      ],
                    ),
                    Row(
                      spacing: 10.r,
                      children: [
                        Text("||", style: TextStyle(color: Colors.grey , fontSize: 19.sp),),
                        Row(
                          spacing: 5.r,
                          children: [
                            Icon(Icons.location_on, color: Theme.of(context).colorScheme.secondary,),
                            Text("Civil lines Bareilly", style: TextStyle(fontWeight: .bold),)
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
                Text("Career Growth Mentorship Program", style: TextStyle(fontWeight: .bold, fontSize: 24.sp),),
                Text("The Career Growth Mentorship Program is designed to guide student towards successful career opportunities and professional", style: TextStyle(color: Colors.grey),),
                Divider(color: Colors.grey,),
                Row(
                  spacing: 90.r,
                  children: [
                    Column(
                      spacing: 4.r,
                      crossAxisAlignment: .start,
                      children: [
                        Row(
                          spacing: 4.r,
                          children: [
                            Icon(Icons.date_range, color: Theme.of(context).colorScheme.secondary, ),
                            Text("Event Starts", style: TextStyle(fontWeight: .bold, fontSize: 15.sp),)
                          ],
                        ),
                        Text("From:"),
                        Text("29-May-2026", style: TextStyle(fontWeight: .bold,fontSize: 15.sp),)
                      ],
                    ),
                    Column(
                      spacing: 4.r,
                      crossAxisAlignment: .start,
                      children: [
                        Row(
                          spacing: 4.r,
                          children: [
                            Icon(Icons.calendar_today_rounded, color: Theme.of(context).colorScheme.secondary, ),
                            Text("Event End", style: TextStyle(fontWeight: .bold, fontSize: 15.sp),)
                          ],
                        ),
                        Text("To:"),
                        Text("06-Jun-2026", style: TextStyle(fontWeight: .bold,fontSize: 15.sp),)
                      ],
                    ),
                  ],
                ),
                Divider(color: Colors.grey,),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    ViewEditBottomButton(icon: Icon(Icons.edit, color: Theme.of(context).colorScheme.secondary,), color: Theme.of(context).colorScheme.secondary, onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MentorshipEdit(),));
                    },),
                    ViewEditBottomButton(icon: Icon(Icons.remove_red_eye, color: Colors.green,), color: Colors.green, onTap:
                    (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ViewMentorship(),));
                    },),
                  ],
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
