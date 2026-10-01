import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/event_dashboard/events_dashboard.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/event_widget/view_categories_tile.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/profile_circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ViewEvent extends StatelessWidget {
  ViewEvent({super.key});

  final List<List<String>> recentDonation = [
    [
      "https://plus.unsplash.com/premium_photo-1663013221431-397d5a386990?q=80&w=1771&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "Annual College Cultural Fest 2026",
      "06 jun, 2026",
    ],
    [
      "https://plus.unsplash.com/premium_photo-1663013221431-397d5a386990?q=80&w=1771&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "Farewell 2026 - A Night to Remember",
      "05 jun, 2026",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [ProfileCircularAvatar()],
        actionsPadding: EdgeInsets.only(right: 15.r),
        title: Text("Event Detail", style: TextStyle(fontSize: 15.r, fontWeight: .bold),),
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
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.r),
                  child: Column(
                    crossAxisAlignment: .start,
                    spacing: 8.r,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300.w,
                        clipBehavior: .antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Image.network(
                          "https://plus.unsplash.com/premium_photo-1721755961147-264926dd20d1?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          fit: .cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Row(
                            spacing: 4.r,
                            children: [
                              Icon(
                                Icons.date_range,
                                color: Theme.of(context).colorScheme.secondary,
                                size: 18.r,
                              ),
                              Text(
                                "28 May 2026",
                                style: TextStyle(fontWeight: .bold),
                              ),
                            ],
                          ),
                          Row(
                            spacing: 4.r,
                            children: [
                              Icon(
                                Icons.receipt_long,
                                color: Theme.of(context).colorScheme.secondary,
                                size: 18.r,
                              ),
                              Text(
                                "Farewell",
                                style: TextStyle(fontWeight: .bold),
                              ),
                            ],
                          ),
                          Row(
                            spacing: 4.r,
                            children: [
                              Icon(
                                Icons.check_circle_rounded,
                                color: Theme.of(context).colorScheme.secondary,
                                size: 18.r,
                              ),
                              Text(
                                "Status:",
                                style: TextStyle(fontWeight: .bold),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.r,
                              vertical: 2.r,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green.withValues(alpha: 0.3),
                              borderRadius: BorderRadius.circular(25.r),
                            ),
                            child: Text(
                              "Active",
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey.withValues(alpha: 0.5)),
                      Text("Farewell 2026 - A Night to Remender", style: TextStyle(fontSize: 21.r, fontWeight: .bold),),
                      Text(
                        "Farewell 2026 is a special event organized to celebrate the memories, achievements, and journey of the graduating students. The event will include cultural performances, award ceremonies, music, fun activities, and heartfelt moments shared among students and faculty. It is a memorable occasion to say goodbye, cherish friendships, and wish everyone success for their future endeavors.",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
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
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.r,
                          vertical: 13.r,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Text(
                          "Other Categories",
                          style: TextStyle(
                            fontSize: 18.r,
                            fontWeight: .bold,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                      ),
                    ),
                    ViewCategoriesTile(title: "Farewell", onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EventsDashboard(),));
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
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.r,
                          vertical: 13.r,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Text(
                          "Recent Events",
                          style: TextStyle(
                            fontSize: 18.r,
                            fontWeight: .bold,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                      ),
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
