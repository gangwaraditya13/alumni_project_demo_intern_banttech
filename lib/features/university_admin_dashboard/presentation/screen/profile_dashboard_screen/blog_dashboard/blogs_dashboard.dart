import 'package:alumni/features/university_admin_dashboard/presentation/screen/profile_dashboard_screen/blog_dashboard/add_blog.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/app_bar_icon.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/blog_widget/blogs_editing_dashboard_card.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/user_input_dropdown_university_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class BlogsDashboard extends StatelessWidget {
  BlogsDashboard({super.key});

  final List<String> categoriesList = [
    "All Categories",
    "Animal Core",
    "Children Welfare",
    "Community Help",
    "Disaster",
    "Education",
    "Emergency Relief",
    "Medical Support",
    "New football ground"
  ];

  final categories = ValueNotifier<String?>(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manage Blogs", style: TextStyle(fontSize: 15.sp, fontWeight: .bold),textAlign: .start,),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 4.r),
            child: AppBarIcon(icons: Icon(Icons.add, size: 15.r), onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddBlog(),));
            },),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: AppBarIcon(icons: Icon(Icons.search, size: 15.r)),
          ),
          ProfileCircularAvatar()
        ],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.r, right: 15.r, bottom: 5.r),
            child: UserInputDropdownUniversityAdmin(valueListenable: categories, itemList:categoriesList, hint: Text("All Categories", style: TextStyle(color: Theme.of(context).colorScheme.secondary),), colors: Theme.of(context).colorScheme.secondary,),
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(left: 15.r, right: 15.r, bottom: 15.r),
            child: BlogsEditingDashboardCard(),
          ),itemCount: 5,))
        ],
      ),
    );
  }
}
