import 'package:alumni/features/university_admin_dashboard/presentation/screen/profile_dashboard_screen/scholarship_dashboard/on_tap_manage_seats_dashboard/athletes_list_applied_for_scholarship.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/screen/profile_dashboard_screen/scholarship_dashboard/on_tap_manage_seats_dashboard/manage_seats_edit_page.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/status_button_university_admin_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ManageSeatsCard extends StatelessWidget {
  const ManageSeatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.w,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(color: Colors.grey.withValues(alpha: 0.3), blurStyle: .outer, blurRadius: 3,spreadRadius: 1)
        ]
      ),
      child:
      Stack(
        children: [
          Container(
            height: 100.w,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Theme.of(context).colorScheme.secondary
            ),
          ),
          Align(
            alignment: .centerRight,
            child: Container(
              height: 100.w,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Theme.of(context).colorScheme.surface
              ),
              child: Row(
                spacing: 8.r,
                children: [
                  Container(
                    height: 100.w,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.4),
                      borderRadius: BorderRadius.circular(12.r)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 6.r, right: 5.5.r),
                      child: CircleAvatar(
                        radius: 40.r,
                        foregroundImage: NetworkImage("https://images.unsplash.com/photo-1627903110580-3185f8b7258d?q=80&w=1521&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.r),
                    child: Column(
                      crossAxisAlignment: .start,
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Container(
                        width: MediaQuery.of(context).size.width/1.6,
                          child: Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text("Cricket"),
                              StatusButtonUniversityAdminDashboard(buttonColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5), child: Text("Rs 500.00",style: TextStyle(fontSize: 12.sp, color: Theme.of(context).colorScheme.secondary),)),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: .start,
                          spacing: 4.r,
                          children: [
                            Row(
                              spacing: 15.r,
                              mainAxisAlignment: .start,
                              children: [
                                Row(
                                  spacing: 2.r,
                                  children: [
                                    Icon(Icons.groups),
                                    Text("04 seats"),
                                  ],
                                ),
                                Row(
                                  spacing: 2.r,
                                  children: [
                                    Icon(Icons.menu_book),
                                    Text("04 seats"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              spacing: 5.r,
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => ManageSeatsEditPage(),));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.r),
                                        border: Border.all(
                                            color: Theme.of(context).colorScheme.secondary,
                                            width: 1
                                        )
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(top:1.r, bottom: 1.r, left: 35.5.r, right: 35.5.r),
                                      child: Row(
                                        spacing: 8.r,
                                        children: [
                                          Icon(Icons.edit, size: 15.r,color: Theme.of(context).colorScheme.secondary,),
                                          Text("Edit", style: TextStyle(color: Theme.of(context).colorScheme.secondary),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => AthletesListAppliedForScholarship(),));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: Theme.of(context).colorScheme.secondary,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(top:1.r, bottom: 1.r, left: 45.5.r, right: 45.5.r),
                                      child: Center(child: Text("View", style: TextStyle(color: Theme.of(context).colorScheme.surface),)),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
