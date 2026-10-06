import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ViewAllDonor extends StatelessWidget {
  const ViewAllDonor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(
        context,
      ).colorScheme.surface.withValues(alpha: 0.97),
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left:15.r, right: 15.r, top: 8.r),
            child: Column(
              crossAxisAlignment: .start,
              spacing: 4.r,
              children: [
                Row(
                  spacing: 8.r,
                  children: [
                    Icon(
                      Icons.clean_hands_sharp,
                      size: 25.r,
                    ),
                    Text(
                      "Donor List",
                      style: TextStyle(fontWeight: .bold, fontSize: 25.sp),
                    ),
                  ],
                ),
                Container(
                  height: 2.5.w,
                  width: 140.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.r),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.r),
                color: Theme.of(context).colorScheme.surface,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hint: Text(
                    "Search donor by mobile / email",
                    style: TextStyle(color: Colors.grey,fontWeight: .bold),
                  ),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 8.r),
                child: Container(
                  height: 490.w,
                  width: MediaQuery.of(context).size.width,
                  clipBehavior: .antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: Colors.grey)
                  ),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Container(
                            height: 250.w,
                            width: MediaQuery.of(context).size.width,
                            child: Image.network("https://plus.unsplash.com/premium_photo-1721755992476-3df0ab7188c2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.r),
                            child: Column(
                              spacing: 8.r,
                              crossAxisAlignment: .start,
                              children: [
                                Text.rich(TextSpan(text: "Email : ", style: TextStyle(fontSize: 16.sp),children: [TextSpan(text: "omkarbind.banttech@gmail.com", style: TextStyle(fontWeight: .bold, fontSize: 16.sp))])),
                                Text.rich(TextSpan(text: "Mobile : ", style: TextStyle(fontSize: 16.sp),children: [TextSpan(text: "7037572037", style: TextStyle(fontWeight: .bold, fontSize: 16.sp))])),
                              ],
                            ),
                          )
                        ],
                      ),
                      Positioned(
                        top: 200.w,
                        left: MediaQuery.of(context).size.width/19,
                        child: Container(
                          height: 200.w,
                          width: 340.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: Theme.of(context).colorScheme.surface,
                            boxShadow: [
                              BoxShadow(color: Colors.grey.shade400, blurRadius: 6.r, blurStyle: .outer, spreadRadius: 0)
                            ]
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.r),
                            child: Column(
                              crossAxisAlignment: .start,
                              mainAxisAlignment: .spaceEvenly,
                              children: [
                                Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Text("₹ 50,000.00", style: TextStyle(fontWeight: .bold, color: Theme.of(context).colorScheme.secondary, fontSize: 21.sp),),
                                    Text("Donation", style: TextStyle(fontWeight: .bold, color: Colors.grey, fontSize: 16.sp),)
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 5.r),
                                  decoration: BoxDecoration(
                                    color: Colors.orange.withValues(alpha: 0.3),
                                    borderRadius: BorderRadius.circular(25.r)
                                  ),
                                  child: Text("ALUMNI", style: TextStyle(fontWeight: .bold, color: Colors.redAccent.shade700),),
                                ),
                                Container(
                                  width: 214.w,
                                  padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 5.r),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withValues(alpha: 0.2),
                                      borderRadius: BorderRadius.circular(25.r)
                                  ),
                                  child: Row(
                                    spacing: 8.r,
                                    children: [
                                      Icon(Icons.receipt_long, color: Theme.of(context).colorScheme.secondary,),
                                      Text("TXN ID: #TXN-260004", style: TextStyle(fontWeight: .bold),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
