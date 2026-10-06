import 'package:alumni/features/alumni_dashboard/presentation/widgets/dashboard_widgets/mentor_widget/mentor_edit_university_dashboard_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class StudentAlumniAthleteSearchScreen extends StatefulWidget {
  const StudentAlumniAthleteSearchScreen({super.key});

  @override
  State<StudentAlumniAthleteSearchScreen> createState() =>
      _StudentAlumniAthleteSearchScreenState();
}

class _StudentAlumniAthleteSearchScreenState
    extends State<StudentAlumniAthleteSearchScreen> {

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.only(top:8.r),
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(top:1.r,bottom: 18.r, left: 15.r, right: 15.r),
            child: MentorEditUniversityDashboardCard(),
          ),itemCount: 5,),
    );
  }
}