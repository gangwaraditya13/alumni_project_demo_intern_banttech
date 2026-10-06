import 'package:alumni/features/university_admin_dashboard/presentation/screen/profile_dashboard_screen/scholarship_dashboard/on_tap_manage_seats_dashboard/view_profile/athletes_list_applied_view_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AthletesListAppliedForScholarshipCard extends StatelessWidget {
  const AthletesListAppliedForScholarshipCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8.r, right: 8.r, top: 8.r),
      height: 180.w,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 4,blurStyle: .outer)
          ]
      ),
      child: Column(
        children: [
          Container(
            height: 50.w,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.only(topRight: Radius.circular(12.r), topLeft: Radius.circular(12.r)),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.r),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15.r, right: 15.r, top: 4.r, bottom: 4.r),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Theme.of(context).colorScheme.surface
                    ),
                    child: Text("Ath-4", style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
                  ),
                  Text("Priyanka", style: TextStyle(color: Theme.of(context).colorScheme.surface, fontSize: 19.sp, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
          Container(
            height: 127.w,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(12.r), bottomLeft: Radius.circular(12.r))
            ),
            child: Padding(
              padding: EdgeInsets.all(8.r),
              child: Column(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top:15.r),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text("Location", style: TextStyle(color: Colors.grey, fontSize: 12.sp, fontWeight: FontWeight.bold),),
                            Text("Delhi", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.sp),)
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text("Sports Plays", style: TextStyle(color: Colors.grey, fontSize: 12.sp, fontWeight: FontWeight.bold),),
                          Text("Cricket", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.sp),)
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AthletesListAppliedViewAll(),));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 2.w
                          )
                      ),
                      child: Center(child: Text("View Profile", style: TextStyle(fontWeight: .bold, fontSize: 17.sp),)),
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
