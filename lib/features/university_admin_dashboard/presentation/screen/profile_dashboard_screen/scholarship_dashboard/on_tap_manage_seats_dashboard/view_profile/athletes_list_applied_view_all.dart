import 'package:alumni/features/university_admin_dashboard/presentation/screen/profile_dashboard_screen/scholarship_dashboard/on_tap_manage_seats_dashboard/view_profile/info_screen/academic_info_screen.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/screen/profile_dashboard_screen/scholarship_dashboard/on_tap_manage_seats_dashboard/view_profile/info_screen/all_info_screen.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/screen/profile_dashboard_screen/scholarship_dashboard/on_tap_manage_seats_dashboard/view_profile/info_screen/docs_info_screen.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/screen/profile_dashboard_screen/scholarship_dashboard/on_tap_manage_seats_dashboard/view_profile/info_screen/personal_info_screen.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/screen/profile_dashboard_screen/scholarship_dashboard/on_tap_manage_seats_dashboard/view_profile/info_screen/sport_info_screen.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/animated_nav_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AthletesListAppliedViewAll extends StatefulWidget {
  AthletesListAppliedViewAll({super.key});

  @override
  State<AthletesListAppliedViewAll> createState() => _AthletesListAppliedViewAllState();
}

class _AthletesListAppliedViewAllState extends State<AthletesListAppliedViewAll> {

  final List<Widget> _screens = [
    AllInfoScreen(),
    PersonalInfoScreen(),
    AcademicInfoScreen(),
    SportInfoScreen(),
    DocsInfoScreen(),
  ];

  int _pageIndex = 0;

  void screenSuffer(int index){

    _pageIndex = index;
    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface.withValues(alpha: 0.97),
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.only(left: 15.r, right: 15.r),
        children: [
          Container(
            height: 350.w,
            width: MediaQuery.of(context).size.width,

            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 250.w,
                      width: MediaQuery.of(context).size.width,
                      clipBehavior: .antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.r),
                          topRight: Radius.circular(15.r),
                        ),
                      ),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1720750964326-bf707651fe24?q=80&w=1601&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        fit: .cover,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Theme.of(context).colorScheme.surface,
                      child: Container(
                        height: 100.w,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: .center,
                          mainAxisAlignment: .end,
                          spacing: 8.r,
                          children: [
                            Text(
                              "Honey Singh",
                              style: TextStyle(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 3.r,
                                bottom: 3.r,
                                left: 15.r,
                                right: 15.r,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.redAccent.withValues(alpha: 0.5),
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              child: Text(
                                "CRICKET • ACTIVE",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.secondary,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: 12.w,
                  top: 200.w,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(50.r),
                      border: BoxBorder.all(
                        color: Theme.of(context).colorScheme.surface,
                        width: 5.w,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(2.r),
                      child: CircleAvatar(
                        foregroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1706542762315-429144025552?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        ),
                        radius: 35.r,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12.r), bottomRight: Radius.circular(12.r)),
            ),
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.all(8.r),
              child: Column(
                spacing: 8.r,
                children: [
                  Row(
                    spacing: 5.r,
                    children: [
                      Icon(Icons.mail_outline, color: Theme.of(context).colorScheme.secondary,size: 17.r,),
                      Text("honey@gmail.com", style: TextStyle(fontSize: 14.sp),),
                    ],
                  ),
                  Row(
                    spacing: 5.r,
                    children: [
                      Icon(Icons.phone, color: Theme.of(context).colorScheme.secondary,size: 17.r,),
                      Text("9456217826", style: TextStyle(fontSize: 14.sp),),
                    ],
                  ),
                  Row(
                    spacing: 5.r,
                    children: [
                      Icon(Icons.location_on, color: Theme.of(context).colorScheme.secondary,size: 17.r,),
                      Text("Badaun, Uttar Pradesh", style: TextStyle(fontSize: 14.sp),),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 4.r, bottom: 4.r),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(12.r)
            ),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                AnimatedNavButton(onTap: (){
                  screenSuffer(0);
                },wide: _pageIndex == 0 ?MediaQuery.of(context).size.width/7:0.w,title: "All",color: _pageIndex == 0?Colors.redAccent.shade700:Colors.grey,),
                AnimatedNavButton(onTap: (){
                  screenSuffer(1);
                },wide: _pageIndex == 1 ?MediaQuery.of(context).size.width/7:0.w, title: "Personal",color: _pageIndex == 1?Colors.redAccent.shade700:Colors.grey,),
                AnimatedNavButton(onTap: (){
                  screenSuffer(2);
                },wide: _pageIndex == 2 ?MediaQuery.of(context).size.width/7:0.w, title: "Academic",color: _pageIndex == 2?Colors.redAccent.shade700:Colors.grey,),
                AnimatedNavButton(onTap: (){
                  screenSuffer(3);
                },wide: _pageIndex == 3 ?MediaQuery.of(context).size.width/7:0.w, title: "Sports",color: _pageIndex == 3?Colors.redAccent.shade700:Colors.grey,),
                AnimatedNavButton(onTap: (){
                  screenSuffer(4);
                },wide: _pageIndex == 4 ?MediaQuery.of(context).size.width/7:0.w, title: "Docs",color: _pageIndex == 4?Colors.redAccent.shade700:Colors.grey,),
              ],
            ),
          ),
          _screens[_pageIndex],
        ],
      ),
    );
  }
}
