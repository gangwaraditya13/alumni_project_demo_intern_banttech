
import 'package:alumni/features/alumni_dashboard/screen/profile_dashboard_screen/blog_dashboard/blogs_edit.dart';
import 'package:alumni/features/alumni_dashboard/screen/profile_dashboard_screen/blog_dashboard/view_blog/view_blog.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/view_edit_bottom_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class BlogsEditingDashboardCard extends StatelessWidget {
  const BlogsEditingDashboardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: .hardEdge,
      height: 433.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 1.r, blurRadius: 5.r, blurStyle: .outer),
          ]
      ),
      child: Column(
        children: [
          DottedBorder(
              options: RectDottedBorderOptions(color: Colors.grey),
              child: Stack(
                children: [
                  Container(
                    height: 170.w,
                    width: MediaQuery.of(context).size.width,
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
              )),
          Padding(
            padding: EdgeInsets.only(top:1.r),
            child: Container(
              padding: EdgeInsets.only(top: 8.r, bottom: 8.r),
              color: Theme.of(context).colorScheme.secondary,
              width: MediaQuery.of(context).size.width,
              child:
              Center(
                child: Text("Farewell", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.surface),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.r),
            child: Column(
              spacing: 17.r,
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .start,
                  spacing: 60.r,
                  children: [
                    Row(
                      spacing: 8.r,
                      children: [
                        Icon(Icons.access_time_filled_rounded, color: Colors.redAccent.shade700,size: 18.r,),
                        Text("28-may-2026", style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),

                    Row(
                      mainAxisAlignment: .start,
                      spacing: 3.r,
                      children: [
                        Container(
                          width: 1.w,
                          height: 20.w,
                          color: Colors.redAccent.shade700,
                        ),
                        Icon(Icons.person, color: Colors.redAccent.shade700,size: 18.r,),
                        Text("Ajay Kumar Garg", style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    )
                  ],
                ),
                Text("Annual Collage Cultural Fest 2026", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.sp),),
                Text("The Annual Collage Cultural Fest 2026 is a grand celebration of creativity, talent and innovation.", style: TextStyle(color: Colors.grey),),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    ViewEditBottomButton(icon: Icon(Icons.edit), color: Colors.black, onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BlogsEdit(),));
                    },),
                    ViewEditBottomButton(icon: Icon(Icons.remove_red_eye, color: Theme.of(context).colorScheme.secondary,), color: Theme.of(context).colorScheme.secondary, onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ViewBlog(),));
                    },),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
