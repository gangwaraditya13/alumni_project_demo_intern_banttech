import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/blog_dashboard/blogs_dashboard.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/event_widget/view_categories_tile.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/profile_circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ViewBlog extends StatelessWidget {
  ViewBlog({super.key});

  final List<List<String>> recentDonation = [
    [
      "https://plus.unsplash.com/premium_photo-1663013221431-397d5a386990?q=80&w=1771&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "Campus Placement Drive 2026",
      "06 jun, 2026",
    ],
    [
      "https://plus.unsplash.com/premium_photo-1663013221431-397d5a386990?q=80&w=1771&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "Why Education Matters for Success",
      "05 jun, 2026",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ProfileCircularAvatar()
        ],
        actionsPadding: EdgeInsets.only(right: 15.r),
        title: Text("Blog Details", style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.r, horizontal: 15.r),
          child: Column(
            spacing: 9.r,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                clipBehavior: .antiAlias,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 8.r,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 230.w,
                          width: MediaQuery.of(context).size.width,
                          clipBehavior: .antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))
                          ),
                          child: Image.network("https://plus.unsplash.com/premium_photo-1661953418575-044d4f41c9cd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .fill,),
                        ),
                        Align(
                          alignment: .topRight,
                          child: Padding(
                            padding: EdgeInsets.all(8.r),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 2.r),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.r),
                                  color: Theme.of(context).colorScheme.secondary
                              ),
                              child: Text("Education", style: TextStyle(color: Theme.of(context).colorScheme.surface),),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.r),
                      child: Column(
                        crossAxisAlignment: .start,
                        spacing: 12.r,
                        children: [
                          Row(
                           spacing: 8.r,
                            children: [
                              Row(
                                spacing: 4.r,
                                children: [
                                  Icon(
                                    Icons.date_range,
                                    color: Colors.brown,
                                    size: 18.r,
                                  ),
                                  Text(
                                    "28 May 2026",
                                    style: TextStyle(fontWeight: .bold, color: Colors.brown),
                                  ),
                                ],
                              ),
                              Container(
                                height: 17.w,
                                width: 1.5.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  color: Colors.brown,
                                ),
                              ),
                              Row(
                                spacing: 4.r,
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: Colors.brown,
                                    size: 18.r,
                                  ),
                                  Text(
                                    "Ajay Kumar Garg",
                                    style: TextStyle(fontWeight: .bold,color: Colors.brown),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text("Campus Placement Drive 2026", style: TextStyle(fontSize: 21.r, fontWeight: .bold),),
                          Text(
                            "The Campus Placement Drive 2026 was successfully organized to connect students with leading companies and career opportunities. The event provided students with a platform to showcase their skills, attend interviews, and interact with industry professionals. Multiple reputed organizations participated in the drive, offering placements across various domains such as software development, marketing, finance, and management. The placement drive aimed to help students begin their professional journey and build successful careers.",
                            style: TextStyle(color: Colors.black.withValues(alpha: 0.6), fontWeight: .w500),
                          ),
                          Divider(color: Colors.grey.withValues(alpha: 0.5)),
                          Row(
                            spacing: 8.r,
                            children: [
                              Icon(Icons.radio_button_checked, color: Colors.redAccent,size: 18.r,),
                              Text("Status:", style: TextStyle(fontWeight: .bold, fontSize: 16.r),),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.r,
                                  vertical: 2.r,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.green.withValues(alpha: 0.2),
                                  borderRadius: BorderRadius.circular(25.r),
                                ),
                                child: Text(
                                  "Active",
                                  style: TextStyle(color: Colors.green, fontWeight: .bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.r),
                      child: Text(
                        "Other Categories",
                        style: TextStyle(
                          fontSize: 21.r,
                          fontWeight: .bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:15.r, right: 15.r),
                      child: Divider(color: Colors.grey.withValues(alpha: 0.5),),
                    ),
                    ViewCategoriesTile(title: "Admission Guidance", onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BlogsDashboard(),));
                    },),
                    ViewCategoriesTile(title: "Campus News", onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BlogsDashboard(),));
                    },),
                    ViewCategoriesTile(title: "College Events", onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BlogsDashboard(),));
                    },),
                    ViewCategoriesTile(title: "Education", onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BlogsDashboard(),));
                    },),
                    ViewCategoriesTile(title: "Placement Drives", onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BlogsDashboard(),));
                    },),
                    ViewCategoriesTile(title: "Scholarship Program", onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BlogsDashboard(),));
                    },),
                    ViewCategoriesTile(title: "Sports", onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BlogsDashboard(),));
                    },),
                    ViewCategoriesTile(title: "Student Achievements", onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BlogsDashboard(),));
                    },),
                  ],
                ),
              ),
              Container(
                height: 365.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.r),
                      child: Text(
                        "Most Recent Blogs",
                        style: TextStyle(
                          fontSize: 21.r,
                          fontWeight: .bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:15.r, right: 15.r),
                      child: Divider(color: Colors.grey.withValues(alpha: 0.5),),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.r),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 6.r,
                              horizontal: 7.r,
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey.withValues(alpha: 0.5),
                                ),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: .start,
                              spacing: 8.r,
                              children: [
                                Container(
                                  height: 110.w,
                                  width: 110.w,
                                  clipBehavior: .antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  child: Image.network(
                                    recentDonation[0][0],
                                    fit: .cover,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    spacing: 8.r,
                                    mainAxisAlignment: .start,
                                    children: [
                                      Text(
                                        "${recentDonation[0][1]}",
                                        style: TextStyle(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.secondary,
                                          fontWeight: .bold,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      Row(
                                        spacing: 8.r,
                                        children: [
                                          Icon(
                                            Icons.date_range,
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.secondary,
                                          ),
                                          Text(recentDonation[0][2]),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.r),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 6.r,
                              horizontal: 7.r,
                            ),
                            child: Row(
                              crossAxisAlignment: .start,
                              spacing: 8.r,
                              children: [
                                Container(
                                  height: 110.w,
                                  width: 110.w,
                                  clipBehavior: .antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  child: Image.network(
                                    recentDonation[1][0],
                                    fit: .cover,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    spacing: 8.r,
                                    mainAxisAlignment: .start,
                                    children: [
                                      Text(
                                        "${recentDonation[1][1]}",
                                        style: TextStyle(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.secondary,
                                          fontWeight: .bold,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      Row(
                                        spacing: 8.r,
                                        children: [
                                          Icon(
                                            Icons.date_range,
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.secondary,
                                          ),
                                          Text(recentDonation[1][2]),
                                        ],
                                      ),
                                    ],
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
