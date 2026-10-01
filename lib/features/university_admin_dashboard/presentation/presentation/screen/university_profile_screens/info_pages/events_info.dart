import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class EventsInfo extends StatelessWidget {
  const EventsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.r, vertical: 8.r),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: Colors.grey),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 8.r),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Row(
                      spacing: 8.r,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.calendar_today_outlined,
                              color: Theme.of(context).colorScheme.surface,
                              size: 18.r,
                            ),
                          ),
                        ),
                        Text(
                          "Upcoming Events",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 18.sp,
                            fontWeight: .bold,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.grey.shade300),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 8.r),
                child: Column(
                  spacing: 10.r,
                  crossAxisAlignment: .start,
                  children: [
                    Container(
                      height: 200.w,
                      width: MediaQuery.of(context).size.width,
                      clipBehavior: .antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Image.network(
                        "https://plus.unsplash.com/premium_photo-1737568318197-c14a85757867?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        fit: .cover,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.r,
                            vertical: 6.r,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.r),
                            // color: Theme.of(context).colorScheme.secondary
                            border: Border.all(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          child: Text(
                            "Farewell",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: .bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.r,
                            vertical: 6.r,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.r),
                            color: Theme.of(context).colorScheme.secondary,
                            // border: Border.all(color: Theme.of(context).colorScheme.secondary)
                          ),
                          child: Text.rich(
                            TextSpan(
                              text: "JUN",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Theme.of(context).colorScheme.surface,
                                fontWeight: .bold,
                              ),
                              children: [
                                TextSpan(
                                  text: "10",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Theme.of(context).colorScheme.surface,
                                    fontWeight: .bold,
                                  ),
                                )
                              ]
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text("Farewell 2026 - A Night to Remember", style: TextStyle(fontSize: 16.sp, fontWeight: .bold),),
                    Text("Farewell 2026 is a special event organized to celebrate the memories, achievements, and experiences shared throughout the academic jo...", style: TextStyle(color: Colors.black.withValues(alpha: 0.7)),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
