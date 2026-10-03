import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/app_bar_icon.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/scholarship_widget/athletes_list_applied_for_scholarship_card.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/home/presentation/widgets/custom_painter_widgets/dotted_line_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AthletesListAppliedForScholarship extends StatelessWidget {
  const AthletesListAppliedForScholarship({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Athletes List Applied for Scholarship", style: TextStyle(fontSize: 13.sp, fontWeight: .bold),textAlign: .start,),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: AppBarIcon(icons: Icon(Icons.search, size: 15.r)),
          ),
          ProfileCircularAvatar()
        ],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),
      body: SafeArea(child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 8.r, right: 8.r),
            height: 340.w,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Theme.of(context).colorScheme.secondary, width: 2)
            ),
            child: Padding(
              padding: EdgeInsets.all(10.r),
              child: Column(
                spacing: 8.r,
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 4.r,bottom: 4.r,left: 15.r, right: 15.r),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(child: Text("SchID-4", style: TextStyle(color: Theme.of(context).colorScheme.surface, fontWeight: .bold),)),
                      ),
                      Text("Created at: 20-july-2025", style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
                  CustomPaint(
                    painter: DottedLinePainter(color: Colors.grey, dotRadius: 1.0, dotSpace: 2.0),
                    size: Size(double.infinity, 10),
                  ),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text("Event Start", style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.secondary),),
                          Text("20-July-2025", style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: .end,
                        children: [
                          Text("Event End", style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.secondary),),
                          Text("20-Aug-2025", style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      )
                    ],
                  ),
                  CustomPaint(
                    painter: DottedLinePainter(color: Colors.grey, dotRadius: 1.0, dotSpace: 2.0),
                    size: Size(double.infinity, 10),
                  ),

                  Text("Summer Scholarship", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border(left: BorderSide(color: Theme.of(context).colorScheme.secondary, width: 3)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.r),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text("This scholarship is open for the athletes who are interested in MBA program and play Cricket."),
                          Text("There are 4 seats available in this category.", style: TextStyle(color: Theme.of(context).colorScheme.secondary),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.amberAccent.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border(left: BorderSide(color: Colors.amberAccent, width: 3)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.r),
                      child: Text("Scholarship Models: Full Scholarship (100%) OR Partial Scholarship (35%)"),
                    ),
                  )
                ],
              ),
            ),
          ),
          AthletesListAppliedForScholarshipCard(),
          AthletesListAppliedForScholarshipCard(),
          AthletesListAppliedForScholarshipCard(),
          AthletesListAppliedForScholarshipCard(),
          AthletesListAppliedForScholarshipCard(),
        ],
      )),
    );
  }
}
