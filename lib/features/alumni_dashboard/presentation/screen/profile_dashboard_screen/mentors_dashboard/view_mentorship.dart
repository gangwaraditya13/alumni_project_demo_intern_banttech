import 'package:alumni/features/alumni_dashboard/presentation/widgets/dashboard_widgets/app_bar_icon.dart';
import 'package:alumni/features/alumni_dashboard/presentation/widgets/profile_circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ViewMentorship extends StatelessWidget {
  const ViewMentorship({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mentorship Program Details",
          style: TextStyle(fontWeight: .bold, fontSize: 15.sp),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: AppBarIcon(icons: Icon(Icons.search)),
          ),
          ProfileCircularAvatar(),
        ],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 15.r,
            right: 15.r,
            top: 5.r,
            bottom: 10.r,
          ),
          child: Column(
            spacing: 15.r,
            children: [
              Container(
                clipBehavior: .antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurStyle: .outer,
                      blurRadius: 4,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Container(
                      height: 200.w,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        "https://imgs.search.brave.com/Xu3ZOHDaKo3JS4si46FzWUwwuj0qIwYiwR8u7-DvFgY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTU3/NDM5MzQxL3Bob3Rv/L2ZvcmVzdC1pbGx1/bWluYXRlZC1ieS10/aGUtcmlzaW5nLXN1/bi5qcGc_cz02MTJ4/NjEyJnc9MCZrPTIw/JmM9OEJpakZFNEh4/Z21ucDZZOGhZT2tM/NVlTemtLU2VqSDYx/OVBRUm9STF9LMD0",
                        fit: .cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.r),
                      child: Column(
                        spacing: 8.r,
                        crossAxisAlignment: .start,
                        children: [
                          Row(
                            spacing: 80.r,
                            children: [
                              Row(
                                spacing: 5.r,
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.secondary,
                                  ),
                                  Text(
                                    "28-May-2026",
                                    style: TextStyle(fontWeight: .bold),
                                  ),
                                ],
                              ),
                              Row(
                                spacing: 10.r,
                                children: [
                                  Text(
                                    "|",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 19.sp,
                                    ),
                                  ),
                                  Row(
                                    spacing: 5.r,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.secondary,
                                      ),
                                      Text(
                                        "Civil lines Bareilly",
                                        style: TextStyle(fontWeight: .bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            "Career Growth Mentorship Program",
                            style: TextStyle(
                              fontWeight: .bold,
                              fontSize: 24.sp,
                            ),
                          ),
                          Text(
                            "The Career Growth Mentorship Program is designed to guide student towards successful career opportunities and professional",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Divider(color: Colors.grey),
                          Row(
                            spacing: 90.r,
                            children: [
                              Column(
                                spacing: 4.r,
                                crossAxisAlignment: .start,
                                children: [
                                  Row(
                                    spacing: 4.r,
                                    children: [
                                      Icon(
                                        Icons.date_range,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.secondary,
                                      ),
                                      Text(
                                        "Event Starts",
                                        style: TextStyle(
                                          fontWeight: .bold,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text("From:"),
                                  Text(
                                    "29-May-2026",
                                    style: TextStyle(
                                      fontWeight: .bold,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                spacing: 4.r,
                                crossAxisAlignment: .start,
                                children: [
                                  Row(
                                    spacing: 4.r,
                                    children: [
                                      Icon(
                                        Icons.calendar_today_rounded,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.secondary,
                                      ),
                                      Text(
                                        "Event End",
                                        style: TextStyle(
                                          fontWeight: .bold,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text("To:"),
                                  Text(
                                    "06-Jun-2026",
                                    style: TextStyle(
                                      fontWeight: .bold,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(color: Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: .start,
                spacing: 15.r,
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    spacing: 8.r,
                    children: [
                      Row(
                        spacing: 8.r,
                        children: [
                          Icon(
                            Icons.credit_card_outlined,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          Text(
                            "Applied Student",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: .bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 2.5.w,
                        width: 90.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.r),
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 450.w,
                    child: ListView.builder(
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(right:9.r),
                        child: Container(
                          height: 400.w,
                          clipBehavior: .antiAlias,
                          decoration: BoxDecoration(
                            border: Border.all(color: Theme.of(context).colorScheme.secondary),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 300.w,
                                    width: 350.w,
                                    child: Image.network("https://images.unsplash.com/photo-1714802064578-5a5809af3cc1?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.r),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 12.r, vertical: 4.r),
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).colorScheme.surface,
                                        borderRadius: BorderRadius.circular(25.r)
                                      ),
                                      child: Text("# STU-10", style: TextStyle(fontWeight: .bold, fontSize: 18.sp),),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(15.r),
                                child: Column(
                                  crossAxisAlignment: .start,
                                  spacing: 5.r,
                                  children: [
                                    Text("Shila", style: TextStyle(fontSize: 18.sp, fontWeight: .bold),),
                                    Container(
                                      height: 1.w,
                                      width: 320.w,
                                      color: Colors.grey,
                                    ),
                                    Row(
                                      spacing: 90.r,
                                      children: [
                                        Column(
                                          spacing: 4.r,
                                          crossAxisAlignment: .start,
                                          children: [
                                            Row(
                                              spacing: 8.r,
                                              mainAxisAlignment: .start,
                                              children: [
                                                Icon(Icons.book),
                                                Text("Course:")
                                              ],
                                            ),
                                            Text("M.Tech"),
                                          ],
                                        ),
                                        Column(
                                          spacing: 4.r,
                                          crossAxisAlignment: .start,
                                          children: [
                                            Row(
                                              spacing: 8.r,
                                              mainAxisAlignment: .start,
                                              children: [
                                                Icon(Icons.school),
                                                Text("Semester:")
                                              ],
                                            ),
                                            Text("1st Year"),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      itemCount: 5,
                      scrollDirection: .horizontal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
