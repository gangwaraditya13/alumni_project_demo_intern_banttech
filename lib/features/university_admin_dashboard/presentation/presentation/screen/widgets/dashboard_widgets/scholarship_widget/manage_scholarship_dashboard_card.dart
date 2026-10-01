import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/scholarship_dashboard/manage_scholarship_edit.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/scholarship_dashboard/on_tap_manage_seats_dashboard/manage_seats_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ManageScholarshipDashboardCard extends StatelessWidget {
  ManageScholarshipDashboardCard({super.key});



  @override
  Widget build(BuildContext context) {

    void onTapEdit(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => ManageScholarshipEdit(),));
    }

    void onTapManagerSeats(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => ManageSeatsDashboard(),));
    }

    return Column(
      children: [
        Container(
          height: 120.w,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r),
              topRight: Radius.circular(15.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top:8.r, bottom: 8.r, left: 15.r, right: 15.r),
            child: Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.r),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.r),
                        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top:4.r, bottom: 4.r, left: 15.r, right: 15.r),
                      child: Text("#SCH-2024-002", style: TextStyle(color: Theme.of(context).colorScheme.surface),),
                    ),
                  ),
                ),
                Text("Merit Excellence Scholarship", style: TextStyle(color: Theme.of(context).colorScheme.surface, fontWeight: FontWeight.bold, fontSize: 17.sp),),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 4.r),
                      child: Icon(Icons.watch_later_outlined, color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.5),size: 17.r,),
                    ),
                    Text("Created: Jul 1,2024", style: TextStyle(color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.5)),)
                  ],
                )

              ],
            ),
          ),
        ),
        Container(
          height: 200.w,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.r),
              bottomRight: Radius.circular(15.r),
            ),
            border: Border(
                bottom: BorderSide(color: Colors.grey.withValues(alpha: 0.3), style: .solid, width: 3.5.w,),
                left: BorderSide(color: Colors.grey.withValues(alpha: 0.3), style: .solid, width: 3.w,),
                right: BorderSide(color: Colors.grey.withValues(alpha: 0.3), style: .solid, width: 3.w,)
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top:4.r, bottom: 15.r, left: 15.r, right: 15.r),
            child: Column(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text("Awarded to students with outstanding academic performance maintaining 85% and above in all subjects.",style: TextStyle(fontSize: 12.sp),),

                Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/2.4,
                      height: 57.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Colors.grey.withValues(alpha: 0.1)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top:5.r, bottom: 5.r, right: 8.r, left: 8.r),
                        child: Column(
                          crossAxisAlignment: .start,
                          mainAxisAlignment: .center,
                          children: [
                            Text("Open From:"),
                            Text("Aug 1,2024")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/2.4,
                      height: 57.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Colors.grey.withValues(alpha: 0.1)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top:5.r, bottom: 5.r, right: 8.r, left: 8.r),
                        child: Column(
                          crossAxisAlignment: .start,
                          mainAxisAlignment: .center,
                          children: [
                            Text("End:"),
                            Text("Aug 1,2024")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    InkWell(
                      onTap: onTapEdit,
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.45,
                        height: 30.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: Theme.of(context).colorScheme.secondary)
                        ),
                        child: Row(
                          mainAxisAlignment: .center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8.r),
                              child: Icon(Icons.edit, size: 17.r, color: Theme.of(context).colorScheme.secondary,),
                            ),
                            Text("Edit", style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: onTapManagerSeats,
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.45,
                        height: 30.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: Colors.orange),
                            color: Colors.orange.withValues(alpha: 0.1)
                        ),
                        child: Row(
                          mainAxisAlignment: .center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8.r),
                              child: Icon(Icons.people_rounded, size: 17.r, color: Colors.orange,),
                            ),
                            Text("Manager seats", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
