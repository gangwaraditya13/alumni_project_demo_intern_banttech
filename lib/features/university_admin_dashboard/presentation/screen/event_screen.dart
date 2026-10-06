import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/event_widget/event_university_dashboard_card.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/user_input_dropdown_university_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class EventScreen extends StatelessWidget {
  EventScreen({super.key});

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
          padding: EdgeInsets.only(left: 15.r, right: 15.r, bottom: 5.r, top: 4.r),
          child: UserInputDropdownUniversityAdmin(valueListenable: categories, itemList:categoriesList, hint: Text("All Categories", style: TextStyle(color: Theme.of(context).colorScheme.secondary),), colors: Theme.of(context).colorScheme.secondary,),
        ),
        Expanded(
          child: ListView.builder(itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(top:8.r, bottom: 7.r, left: 15.r, right: 15.r),
            child: EventUniversityDashboardCard(),
          ),itemCount: 5,),
        ),
      ],
    );
  }
}
