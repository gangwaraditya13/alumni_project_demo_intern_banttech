import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class HomePagePart10Card extends StatelessWidget {
  const HomePagePart10Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.2,
      height: MediaQuery.of(context).size.height/2.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.4), blurRadius: 5.r,blurStyle: .outer),
          ]
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height/4,
                    width: MediaQuery.of(context).size.width/1,
                    clipBehavior: .antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(15.r), topLeft: Radius.circular(15.r))
                    ),
                    child: Image.network("https://images.unsplash.com/photo-1554539484-e4fab56d4a5c?q=80&w=1689&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .fill,)
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width/1,
                    color: Theme.of(context).colorScheme.secondary,
                    height: 35.h,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.r,left: 8.r, right: 8.r),
                      child: Text("Duration: Jan 15, 2025 to Apr 30, 2025", style: TextStyle(color: Theme.of(context).colorScheme.surface),),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.r),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.r),
                    child: Text("Vorem Ipsum Dolor Sit Amet", style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 18.sp, fontWeight: FontWeight.bold),),
                  ),
                  Text("Every Traditional Undergraduate Student Receives Scholarship")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
