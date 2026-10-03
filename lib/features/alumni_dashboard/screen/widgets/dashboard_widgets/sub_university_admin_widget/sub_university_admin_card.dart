import 'package:alumni/features/alumni_dashboard/screen/profile_dashboard_screen/sub_university_admin_dashboard/edit_sub_university_admin.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/edit_button_sub_university_admin.dart';
import 'package:alumni/features/alumni_dashboard/screen/widgets/dashboard_widgets/icon_and%20_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class SubUniversityAdminCard extends StatelessWidget {
  const SubUniversityAdminCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 258.w,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(color: Colors.grey,spreadRadius: 2.r, blurStyle: .outer, blurRadius: 1.r)
          ]
      ),
      child: Column(
        children: [
          Container(
            height: 150.w,
            width: MediaQuery.of(context).size.width,
            clipBehavior: .antiAlias,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(12.r), topLeft: Radius.circular(12.r))
            ),
            child: Image.network("https://images.unsplash.com/photo-1530549387789-4c1017266635?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .fill,),
          ),
          Padding(
            padding: EdgeInsets.all(8.r),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text("Kamal Nath", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),),

                Row(
                  spacing: 4.r,
                  children: [
                    Icon(Icons.calendar_month, color: Theme.of(context).colorScheme.primary,),
                    Text("jul 1, 2024")
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom:8.r, left: 8.r, right: 8.r),
            child: Row(
              spacing: 8.r,
              children: [
                IconAndText(text: "9876543212",icons: Icon(Icons.phone, size: 12.r,color: Theme.of(context).colorScheme.secondary,),),
                IconAndText(text: "Kamalnath12@gmail.com",icons: Icon(Icons.email, size: 12.r,color: Theme.of(context).colorScheme.secondary,)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom:8.r, left: 8.r, right: 8.r),
            child: EditButtonSubUniversityAdmin(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => EditSubUniversityAdmin(),));
            },),
          )
        ],
      ),
    );
  }
}
