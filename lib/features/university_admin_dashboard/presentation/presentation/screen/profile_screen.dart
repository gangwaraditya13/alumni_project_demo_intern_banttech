import 'package:alumni/features/home/presentation/screen/sign_in_screen.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/blog_dashboard/blogs_dashboard.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/event_dashboard/events_dashboard.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/manage_donation_campaigns_dashbord/manage_donation_campaign.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/scholarship_dashboard/manage_scholarship_dashboard.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/mentors_dashboard/mentor_university_dashboard.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/reels_university_dashboard.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/sports_dashboard/sport_university_dashboard.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/sub_university_admin_dashboard/sub_university_admin.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/university_admin_edit_profile.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/university_courses/university_courses_dashboard.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/profile_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.r),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: [
                  BoxShadow(color: Colors.grey.withValues(alpha: 0.5), blurStyle: .outer, blurRadius: 5.h, spreadRadius:0.1),
                  BoxShadow(color: Colors.grey.withValues(alpha: 0.5), blurStyle: .outer, blurRadius: 5.h, spreadRadius:0.1),
                ]
            ),
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => UniversityAdminEditProfile(),));
              },
              minTileHeight: 70.h,
              leading: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(50.r),
                  border: BoxBorder.all(
                    color: Theme.of(
                      context,
                    ).colorScheme.secondary,
                    width: 3,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.r),
                  child: CircleAvatar(
                    foregroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1718209881014-83732ea8376d?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    ),
                    radius: 18.r,
                  ),
                ),
              ),
              title: Text("Delhi University", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
              subtitle: Text("University Admin", style: TextStyle(fontSize: 12, color: Colors.grey),),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ),
          ListTile(
            onTap: (){
              setState(() {});
            },
            minTileHeight: 48.h,
            leading: Icon(Icons.home, color: Theme.of(context).colorScheme.secondary,),
            title: Text("Home", style: TextStyle(fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.arrow_forward_ios_outlined, color: Theme.of(context).colorScheme.secondary,),
            textColor: Theme.of(context).colorScheme.secondary,
          ),
          Divider(color: Colors.grey,  height: 1.h,),
          ProfileListTile(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SubUniversityAdmin(),));
          },title: "Sub-University Admins",lIcon: Icons.person_3_sharp,),
          ProfileListTile(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => UniversityCoursesDashboard(),));
          } ,title: "University Courses",lIcon: Icons.menu_book,),
          ProfileListTile(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SportUniversityDashboard(),));
          } ,title: "Sports",lIcon: Icons.sports_handball,),
          ProfileListTile(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MentorUniversityDashboard(),));
          } ,title: "Mentors (Coaches)",lIcon: Icons.developer_board,),
          ProfileListTile(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ManageScholarshipDashboard(),));
          } ,title: "Scholarship",lIcon: Icons.dashboard_customize_outlined),
          ProfileListTile(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ManageDonationCampaign(),));
          } ,title: "Mange Donation Campaign(s)",lIcon: Icons.back_hand_outlined),
          ProfileListTile(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ReelsUniversityDashboard(),));
          } ,title: "Reels",lIcon: Icons.screen_lock_portrait_rounded),
          ProfileListTile(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => EventsDashboard(),));
          } ,title: "Events",lIcon: Icons.event_note_sharp),
          Column(
            children: [
              ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BlogsDashboard(),));
                  },
                  minTileHeight: 50.h,
                  leading: Icon(Icons.video_settings_sharp),
                  title: Text("Blogs", style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, color: Theme.of(context).colorScheme.secondary,)
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 15.r),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: Colors.red),
                color: Colors.red.withValues(alpha: 0.2),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.r),
                child: Row(
                  spacing: 8.r,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.r),
                          child: Icon(Icons.person_add_disabled),
                        ),
                      ),
                    ),
                    Text("Deactivate Account", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Colors.red),)
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInScreen(),));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/18,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12.r)
              ),
              child: Center(child: Text("Logout", style: TextStyle(color: Theme.of(context).colorScheme.surface, fontWeight: FontWeight.bold, fontSize: 15.sp),)),
            ),
          ),
        ],
      ),
    );
  }
}
