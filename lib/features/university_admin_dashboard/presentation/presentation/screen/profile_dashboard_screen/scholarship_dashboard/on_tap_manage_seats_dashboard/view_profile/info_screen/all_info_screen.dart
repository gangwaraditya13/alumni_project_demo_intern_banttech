
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/scholarship_widget/info_screen_widgets/info_icon_detail_tile.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/profile_circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AllInfoScreen extends StatefulWidget {
  const AllInfoScreen({super.key});

  @override
  State<AllInfoScreen> createState() => _AllInfoScreenState();
}

class _AllInfoScreenState extends State<AllInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Theme.of(context).colorScheme.surface
            ),
            child: Column(
              spacing: 20.r,
              crossAxisAlignment: .start,
              children: [
                Text("Personal Information", style: TextStyle(fontSize: 19.sp, fontWeight: .bold),),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text("BASIC DETAILS", style: TextStyle(fontWeight: .bold, fontSize: 15.sp),),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.withValues(alpha: 0.3),
                    ),
                  ],
                ),

                Column(
                  spacing: 13.r,
                  children: [
                    InfoIconDetailTile(title: "FULL NAME", info: "Honey Singh", icon: Icons.person,),
                    InfoIconDetailTile(title: "DATE OF BIRTH", info: "2026-05-26", icon: Icons.calendar_month,),
                    InfoIconDetailTile(title: "NATIONALITY", info: "Barbadian", icon: Icons.location_on,),
                    InfoIconDetailTile(title: "GENDER", info: "Male", icon: Icons.male,),
                  ],
                ),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text("CONTACT INFORMATION", style: TextStyle(fontWeight: .bold, fontSize: 15.sp),),
                    Divider(thickness: 2, color: Colors.grey.withValues(alpha: 0.3),),
                  ],
                ),
                Column(
                  spacing: 13.r,
                  children: [
                    InfoIconDetailTile(title: "EMAIL", icon: Icons.email, info: "honeybanttech@gmail.com"),
                    InfoIconDetailTile(title: "PHONE", icon: Icons.phone, info: "8218111039"),
                    InfoIconDetailTile(title: "ADDRESS", icon: Icons.email, info: "Vill Nagla Sharki Badaun, BADAUN, Uttar Pradesh, 243601"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left:8.r, right: 8.r, top: 15.r, bottom: 15.r),
            margin: EdgeInsets.only(top: 8.r, bottom: 8.r),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Theme.of(context).colorScheme.surface
            ),
            child: Column(
              crossAxisAlignment: .start,
              spacing: 8.r,
              children: [
                Text("Athlete Reels",  style: TextStyle(fontSize: 19.sp, fontWeight: .bold),),
                Row(
                  spacing: 15.r,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.r),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple.shade200,
                          borderRadius: BorderRadius.circular(12.r)
                      ),
                      child: Icon(Icons.ondemand_video, color: Colors.deepPurple,),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text("Athlete Reels", style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold),),
                          Text("Latest Performance videos from Honey Singh.", style: TextStyle(color: Colors.grey, fontSize: 15.sp),),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.r),
            margin: EdgeInsets.only(top: 8.r, bottom: 8.r),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Theme.of(context).colorScheme.surface
            ),
            child: Column(
              spacing: 8.r,
              children: [
                Row(
                  spacing: 8.r,
                  children: [
                    ProfileCircularAvatar(),
                    Column(
                      // spacing: -8.r,
                      children: [
                        Text("Honey Singh"),
                        Text.rich(TextSpan(text: "6 days age" , children: [
                          TextSpan(text: " ◍", style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 20.sp),)
                        ],style: TextStyle(color: Colors.grey)),)
                      ],
                    )
                  ],
                ),
                Container(
                  height: 500.w,
                  clipBehavior: .antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r)
                  ),
                  child: Image.network("https://images.unsplash.com/photo-1706542762315-429144025552?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
                ),
                Row(
                  children: [
                    Icon(Icons.thumb_up, color: Theme.of(context).colorScheme.secondary,),
                    Text("1", style: TextStyle(color: Theme.of(context).colorScheme.secondary),)
                  ],
                )
              ],
            ),
          ),
          Container(height: 50.w,)
        ],
      ),
    );
  }
}
