import 'package:alumni/features/alumni_dashboard/screen/profile_dashboard_screen/scholarship_dashboard/on_tap_manage_seats_dashboard/add_seats.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/app_bar_icon.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/scholarship_widget/manage_seats_card.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/home/presentation/widgets/custom_painter_widgets/circles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ManageSeatsDashboard extends StatelessWidget {
  const ManageSeatsDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Manage Seats",
          style: TextStyle(fontSize: 15.sp),
          textAlign: .start,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 4.r),
            child: AppBarIcon(icons: Icon(Icons.add, size: 15.r), onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddSeats(),));
            },),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: AppBarIcon(icons: Icon(Icons.search, size: 15.r)),
          ),
          ProfileCircularAvatar(),
        ],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 8.r,
              bottom: 8.r,
              left: 15.r,
              right: 15.r,
            ),
            child: Container(
              padding: EdgeInsets.all(12.r),
              clipBehavior: .antiAlias,
              height: 190.w,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                clipBehavior: .antiAlias,
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          color: Theme.of(
                            context,
                          ).colorScheme.primary.withValues(alpha: 0.3),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 4.r,
                            bottom: 4.r,
                            left: 15.r,
                            right: 15.r,
                          ),
                          child: Text(
                            "#SCH-2024-002",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.surface,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "State scholarship",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.surface,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.surface,
                          fontSize: 15.sp,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(
                                context,
                              ).colorScheme.primary.withValues(alpha: 0.2),
                              borderRadius: BorderRadius.circular(6.r),
                            ),
                            width: MediaQuery.of(context).size.width / 3.65,
                            child: Padding(
                              padding: EdgeInsets.all(5.r),
                              child: Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    "START DATE",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                    ),
                                  ),
                                  Text(
                                    "26-FEB-2026",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.surface,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(
                                context,
                              ).colorScheme.primary.withValues(alpha: 0.2),
                              borderRadius: BorderRadius.circular(6.r),
                            ),
                            width: MediaQuery.of(context).size.width / 3.65,
                            child: Padding(
                              padding: EdgeInsets.all(5.r),
                              child: Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    "END DATE",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                    ),
                                  ),
                                  Text(
                                    "26-FEB-2026",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.surface,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(
                                context,
                              ).colorScheme.primary.withValues(alpha: 0.2),
                              borderRadius: BorderRadius.circular(6.r),
                            ),
                            width: MediaQuery.of(context).size.width / 3.65,
                            child: Padding(
                              padding: EdgeInsets.all(5.r),
                              child: Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    "CREATED AT",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                    ),
                                  ),
                                  Text(
                                    "26-FEB-2026",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.surface,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  CustomPaint(
                    size: Size(MediaQuery.of(context).size.width, 190.w),
                    painter: Circles(
                      40,
                      Theme.of(
                        context,
                      ).colorScheme.primary.withValues(alpha: 0.15),
                      Offset(363.w, 15.w),
                    ),
                  ),
                  CustomPaint(
                    size: Size(MediaQuery.of(context).size.width, 190.w),
                    painter: Circles(
                      40,
                      Theme.of(
                        context,
                      ).colorScheme.primary.withValues(alpha: 0.15),
                      Offset(15.w, 173.w),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.r,
              left: 15.r,
              right: 15.r,
              bottom: 4.r,
            ),
            child: ManageSeatsCard(),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.r,
              left: 15.r,
              right: 15.r,
              bottom: 4.r,
            ),
            child: ManageSeatsCard(),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.r,
              left: 15.r,
              right: 15.r,
              bottom: 4.r,
            ),
            child: ManageSeatsCard(),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.r,
              left: 15.r,
              right: 15.r,
              bottom: 4.r,
            ),
            child: ManageSeatsCard(),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.r,
              left: 15.r,
              right: 15.r,
              bottom: 4.r,
            ),
            child: ManageSeatsCard(),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.r,
              left: 15.r,
              right: 15.r,
              bottom: 4.r,
            ),
            child: ManageSeatsCard(),
          )
        ],
      ),
    );
  }
}
