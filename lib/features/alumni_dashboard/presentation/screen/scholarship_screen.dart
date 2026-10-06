import 'package:alumni/features/alumni_dashboard/presentation/widgets/dashboard_widgets/blog_widget/blogs_editing_dashboard_card.dart';
import 'package:alumni/features/alumni_dashboard/presentation/widgets/user_input_dropdown_university_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ScholarshipScreen extends StatefulWidget {
  const ScholarshipScreen({super.key});

  @override
  State<ScholarshipScreen> createState() => _ScholarshipScreenState();
}

class _ScholarshipScreenState extends State<ScholarshipScreen> {

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
    return Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.r, right: 15.r, bottom: 5.r , top: 5.r),
            child: UserInputDropdownUniversityAdmin(valueListenable: categories, itemList:categoriesList, hint: Text("All Categories", style: TextStyle(color: Theme.of(context).colorScheme.secondary),), colors: Theme.of(context).colorScheme.secondary,),
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(left: 15.r, right: 15.r, bottom: 15.r),
            child: BlogsEditingDashboardCard(),
          ),itemCount: 5,))
        ],
    );
  }
}
