import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AllBlogsInfo extends StatelessWidget {
  AllBlogsInfo({super.key});
  @override
  Widget build(BuildContext context) {
    
    final card = List<Widget>.generate(2, (index) => Container(
      margin: EdgeInsets.symmetric(horizontal:15.r, vertical: 8.r),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        spacing: 12.r,
        crossAxisAlignment: .start,
        children: [
          Container(
            height: 200.w,
            width: MediaQuery.of(context).size.width,
            clipBehavior: .antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12.r), topRight: Radius.circular(12.r))
            ),
            child: Image.network("https://plus.unsplash.com/premium_photo-1661870912512-840fac2ffd45?q=80&w=1700&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:10.r, vertical: 12.r),
            child: Column(
              spacing: 12.r,
              crossAxisAlignment: .start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.r, vertical: 6.r),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                      color: Theme.of(context).colorScheme.secondary
                      // border: Border.all(color: Theme.of(context).colorScheme.secondary)
                  ),
                  child: Text("Education",style: TextStyle(fontSize: 12.sp, color: Theme.of(context).colorScheme.surface, fontWeight: .bold),),
                ),
                Text("Why Education Matters for Success", style: TextStyle(fontWeight: .bold, fontSize: 17.sp),),
                Row(
                  spacing: 4.r,
                  children: [
                    Icon(Icons.calendar_today_outlined,color: Colors.grey,size: 14.r,),
                    Text("May 28, 2026",style: TextStyle(color: Colors.grey),)
                  ],
                )
              ],
            ),
          ),

        ],
      ),
    ),);
    
    
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal:15.r, vertical: 8.r),
          padding: EdgeInsets.symmetric(horizontal:10.r, vertical: 12.r),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
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
                    Icons.list_alt_rounded,
                    color: Theme.of(context).colorScheme.surface,
                    size: 20.r,
                  ),
                ),
              ),
              Text(
                "All Blogs",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 18.sp,
                  fontWeight: .bold,
                ),
              ),
            ],
          ),
        ),
        ...card,
      ],
    );
  }
}
