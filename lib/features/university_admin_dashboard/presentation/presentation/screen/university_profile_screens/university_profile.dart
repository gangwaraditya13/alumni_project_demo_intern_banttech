import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/university_admin_edit_profile.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/university_profile_screens/info_pages/all_blogs_info.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/university_profile_screens/info_pages/all_info.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/university_profile_screens/info_pages/events_info.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/animated_nav_button.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/custom_animation_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class UniversityProfile extends StatefulWidget {
  const UniversityProfile({super.key});

  @override
  State<UniversityProfile> createState() => _UniversityProfileState();
}

class _UniversityProfileState extends State<UniversityProfile> {

  final List<Widget> _screens = [
    AllInfo(),
    AllBlogsInfo(),
    EventsInfo(),
  ];

  int _pageIndex = 0;

  void screenSuffer(int index){

    _pageIndex = index;
    setState(() {});

  }

  @override
  Widget build(BuildContext context) {

    TextStyle _rowText = TextStyle(fontSize: 12.sp);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface.withValues(alpha: 0.97),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Theme.of(context).colorScheme.surface,
                  height: 442.w,
                  child: Column(
                    spacing: 20.r,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250.w,
                        child: Image.network("https://images.unsplash.com/photo-1779453322004-2771689a0dbe?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:8.r, horizontal: 15.r),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 155.w,
                          child: Column(
                            spacing: 4.r,
                            children: [
                              Text("Ajay Kumar Garg", style: TextStyle(fontWeight: .bold, fontSize: 18.sp),),
                              Text("Engineering College", style: TextStyle(color: Colors.grey),),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal:12.r, vertical: 8.r),
                                child: Row(
                                  mainAxisAlignment: .spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text("71", style: _rowText,),
                                        Text("Alumni", style: _rowText,)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text("22", style: _rowText,),
                                        Text("Courses", style: _rowText,)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text("2", style: _rowText,),
                                        Text("Mentors", style: _rowText,)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text("4", style: _rowText,),
                                        Text("Students", style: _rowText,)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              CustomAnimationButton(callback: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => UniversityAdminEditProfile(),));
                              }, text: "Edit Profile")
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
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
            Container(
              margin: EdgeInsets.only(top: 4.r, bottom: 4.r),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
              ),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  AnimatedNavButton(onTap: (){
                    screenSuffer(0);
                  },wide: _pageIndex == 0 ?MediaQuery.of(context).size.width/6:0.w,title: "All",color: _pageIndex == 0?Colors.black:Colors.grey,),
                  AnimatedNavButton(onTap: (){
                    screenSuffer(1);
                  },wide: _pageIndex == 1 ?MediaQuery.of(context).size.width/6:0.w, title: "Blogs",color: _pageIndex == 1?Colors.black:Colors.grey,),
                  AnimatedNavButton(onTap: (){
                    screenSuffer(2);
                  },wide: _pageIndex == 2 ?MediaQuery.of(context).size.width/6:0.w, title: "Events",color: _pageIndex == 2?Colors.black:Colors.grey,),
                  ],
              ),
            ),
            _screens[_pageIndex],
          ],
        ),
      ),
    );
  }
}
