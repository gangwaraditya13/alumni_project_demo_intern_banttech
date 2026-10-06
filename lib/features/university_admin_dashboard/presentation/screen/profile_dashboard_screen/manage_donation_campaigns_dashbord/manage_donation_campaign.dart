import 'package:alumni/features/university_admin_dashboard/presentation/screen/profile_dashboard_screen/manage_donation_campaigns_dashbord/add_manage_donation.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/app_bar_icon.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/dashboard_widgets/manage_donation_widget/manage_donation_campaign_card.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/profile_circular_avatar.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/widgets/user_input_dropdown_university_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ManageDonationCampaign extends StatelessWidget {
  ManageDonationCampaign({super.key});
  
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
        title: Text("Manage Donation Campaign(s)", style: TextStyle(fontSize: 14.sp, fontWeight: .bold),textAlign: .start,),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: AppBarIcon(icons: Icon(Icons.add, size: 15.r,), onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddManageDonation(),));
            },),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: AppBarIcon(icons: Icon(Icons.search, size: 15.r,)),
          ),
          ProfileCircularAvatar()
        ],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),
      body: Column(
        spacing: 6.r,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.r, right: 15.r, bottom: 8.r),
            child: UserInputDropdownUniversityAdmin(valueListenable: categories, itemList: categoriesList, hint: Text("All Categories", style: TextStyle(color: Theme.of(context).colorScheme.secondary),), colors: Theme.of(context).colorScheme.secondary,),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(top:4.r,bottom: 12.r, left: 15.r, right: 15.r),
              child: ManageDonationCampaignCard(),
            ), itemCount: 5,),
          )
        ],
      ),
    );
  }
}
