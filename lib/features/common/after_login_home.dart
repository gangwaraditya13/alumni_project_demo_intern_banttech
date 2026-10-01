import 'package:alumni/features/common/home_view.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/event_screen.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/home_screen_after_login.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/university_admin_edit_profile.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_screen.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/reels_screen.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/scholarship_screen.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/student_alumni_athlete_search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AfterLoginHome extends StatefulWidget {
  AfterLoginHome({super.key});

  @override
  State<AfterLoginHome> createState() => _AfterLoginHomeState();
}

class _AfterLoginHomeState extends State<AfterLoginHome> {
  ValueNotifier<bool> _dropDownArrow = ValueNotifier(true);

  void _showProfileDropdown(BuildContext context) async {
    final RenderBox button =
    context.findRenderObject() as RenderBox;

    final RenderBox overlay =
    Overlay.of(context).context.findRenderObject() as RenderBox;

    final Offset position =
    button.localToGlobal(Offset.zero, ancestor: overlay);

    final RelativeRect menuPosition = RelativeRect.fromLTRB(
      position.dx - 150.w,
      position.dy + button.size.height + 20.h,
      overlay.size.width - position.dx - button.size.width-10.w,
      0,
    );

    _dropDownArrow.value = false;

    final String? result = await showMenu<String>(
      context: context,
      position: menuPosition,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.r),
      ),

      constraints: BoxConstraints(
        minWidth: 140.w,
        maxWidth: 200.w,
      ),

      items: [
        PopupMenuItem<String>(
          value: "profile",
          height: 55.h,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.blue,
                size: 24.r,
              ),
              SizedBox(width: 15.w),
              Text(
                "My Profile",
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
        ),

        PopupMenuItem<String>(
          value: "university",
          height: 55.h,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              Icon(
                Icons.school,
                color: Colors.blue,
                size: 24.r,
              ),
              SizedBox(width: 15.w),
              Text(
                "University Profile",
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
        ),

        const PopupMenuDivider(),

        PopupMenuItem<String>(
          value: "logout",
          height: 55.h,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              Icon(
                Icons.logout,
                color: Colors.red,
                size: 24.r,
              ),
              SizedBox(width: 15.w),
              Text(
                "Logout",
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
        ),
      ],
    );


    _dropDownArrow.value = true;

    if (result == null) return;

    switch (result) {
      case "profile":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UniversityAdminEditProfile(),
          ),
        );
        break;

      case "university":
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const UniversityProfileScreen(),
        //   ),
        // );
        break;

      case "logout":
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  HomeView(),));
        break;
    }
  }


  int _currentPage = 0;





  final List<Widget> _pages = [
    HomeScreenAfterLogin(),
    StudentAlumniAthleteSearchScreen(),
    ReelsScreen(),
    EventScreen(),
    ScholarshipScreen(),
    ProfileScreen(),
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
              color: Colors.grey.withValues(alpha: 0.5),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.r),
              child: Icon(Icons.search),
            ),
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: 18.w,
              minWidth: 15.w
            ),
          ),
          Container(
            width: 81.w,
            height: 45.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              border: BoxBorder.all(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(4.r),
              child: Row(
                children: [
                  CircleAvatar(
                    foregroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1718209881014-83732ea8376d?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    ),
                  ),
                  ValueListenableBuilder(
                    valueListenable: _dropDownArrow,
                    builder: (context, value, child) => InkWell(
                      onTap: () {
                        _showProfileDropdown(context);
                      },
                      child: value
                          ? Icon(Icons.keyboard_arrow_down_outlined, size: 25.r)
                          : Icon(Icons.keyboard_arrow_up, size: 25.r),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 18.w),
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
                                icon: Image.asset("lib/assets/icons/img_9.png", height: 30.r,),
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
                                icon: Image.asset("lib/assets/icons/img_4.png", height: 30.r,),
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
                                icon:  Image.asset("lib/assets/icons/img_7.png", height: 30.r,),
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
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: _currentPage != 5 ?Colors.transparent:Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(12)
                              ),
                                child: IconButton(
                                    onPressed: () => _changePage(5),
                                    icon: Image.asset("lib/assets/icons/img_8.png", height: 30.r,),
                                )
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Container(
                              width: 34.w,
                              height: 3.h,
                              color: _currentPage != 5? Colors.transparent:Theme.of(context).colorScheme.primary,
                            )
                          ],
                        )
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
