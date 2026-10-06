import 'package:alumni/features/alumni_dashboard/presentation/screen/alumni_home_screen_after_login.dart';
import 'package:alumni/features/alumni_dashboard/presentation/screen/event_screen.dart';
import 'package:alumni/features/alumni_dashboard/presentation/screen/profile_dashboard_screen/alumni_edit_profile.dart';
import 'package:alumni/features/alumni_dashboard/presentation/screen/profile_screen.dart';
import 'package:alumni/features/alumni_dashboard/presentation/screen/reels_screen.dart';
import 'package:alumni/features/alumni_dashboard/presentation/screen/scholarship_screen.dart';
import 'package:alumni/features/alumni_dashboard/presentation/screen/student_alumni_athlete_search_screen.dart';
import 'package:alumni/features/alumni_dashboard/presentation/widgets/profile_circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AfterLoginHomeAlumni extends StatefulWidget {
  const AfterLoginHomeAlumni({super.key});

  @override
  State<AfterLoginHomeAlumni> createState() => _AfterLoginHomeAlumniState();
}

class _AfterLoginHomeAlumniState extends State<AfterLoginHomeAlumni> {

  int _currentPage = 0;

  final List<Widget> _pages = [
    AlumniHomeScreenAfterLogin(),
    StudentAlumniAthleteSearchScreen(),
    ReelsScreen(),
    EventScreen(),
    ScholarshipScreen(),
  ];

  void _changePage(int index) {
    if (index == 0) {
      setState(() => _currentPage = 0);
    } else {
      setState(() => _currentPage = index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("lib/assets/icons/img.png", height: 50.h),
        actions: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.r),
              child: Icon(Icons.search, color: Theme.of(context).colorScheme.surface,size: 18.r,),
            ),
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: 14.w,
              minWidth: 10.w
            ),
          ),
          ProfileCircularAvatar(),
          SizedBox(width: 10.w),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
          }, icon: Icon(Icons.dehaze_rounded, color: Theme.of(context).colorScheme.secondary,))
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: EdgeInsets.only(top:4.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15.5,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.grey,
                              width: 2.w
                          )
                      )
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15.5,
                  child: Padding(
                    padding: EdgeInsets.only(right: 23.r, left: 23.r),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      crossAxisAlignment: .start,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: _currentPage != 0 ?Colors.transparent:Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child: IconButton(
                                onPressed: () => _changePage(0),
                                icon: Image.asset("lib/assets/icons/img_6.png", height: 30.r,),
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Container(
                              width: 34.w,
                              height: 3.h,
                              color: _currentPage != 0? Colors.transparent:Theme.of(context).colorScheme.primary,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: _currentPage != 1 ?Colors.transparent:Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child: IconButton(
                                onPressed: () => _changePage(1),
                                icon: Image.asset("lib/assets/icons/alumni_dashboard/img.png", height: 30.r,),
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Container(
                              width: 34.w,
                              height: 3.h,
                              color: _currentPage != 1? Colors.transparent:Theme.of(context).colorScheme.primary,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: _currentPage != 2 ?Colors.transparent:Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child: IconButton(
                                onPressed: () => _changePage(2),
                                icon: Image.asset("lib/assets/icons/alumni_dashboard/img_2.png", height: 30.r,),
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Container(
                              width: 34.w,
                              height: 3.h,
                              color: _currentPage != 2? Colors.transparent:Theme.of(context).colorScheme.primary,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: _currentPage != 3 ?Colors.transparent:Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child: IconButton(
                                onPressed: () => _changePage(3),
                                icon:  Image.asset("lib/assets/icons/alumni_dashboard/img_1.png", height: 30.r,),
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Container(
                              width: 34.w,
                              height: 3.h,
                              color: _currentPage != 3? Colors.transparent:Theme.of(context).colorScheme.primary,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: _currentPage != 4 ?Colors.transparent:Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child: IconButton(
                                onPressed: () => _changePage(4),
                                icon: Image.asset("lib/assets/icons/award-fill.png", height: 30.r,),
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Container(
                              width: 34.w,
                              height: 3.h,
                              color: _currentPage != 4? Colors.transparent:Theme.of(context).colorScheme.primary,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: _pages[_currentPage])
          ],
        ),
      ),
    );
  }
}
