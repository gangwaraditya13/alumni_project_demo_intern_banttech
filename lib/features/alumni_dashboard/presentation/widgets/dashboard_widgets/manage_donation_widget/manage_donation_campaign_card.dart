import 'package:alumni/features/alumni_dashboard/presentation/screen/profile_dashboard_screen/donation_campaigns_dashboard/view_donetion/view_donation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ManageDonationCampaignCard extends StatelessWidget {
  const ManageDonationCampaignCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 1.r,blurRadius: 4.r,blurStyle: .outer)
          ]
      ),
      height: 615.w,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                clipBehavior: .antiAlias,
                height: 250.w,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(12.r), topLeft: Radius.circular(12.r))
                ),
                child: Image.network("https://plus.unsplash.com/premium_photo-1721755972920-9b9f4ee7d044?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
              ),
              SizedBox(
                height: 70.w,
              ),
              Padding(
                padding: EdgeInsets.all(8.r),
                child: Column(
                  spacing: 15.r,
                  crossAxisAlignment: .start,
                  children: [
                    Text("Help Disaster Victims Reduild Lives", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27.sp),),
                    Row(
                      spacing: 8.r,
                      children: [
                        Icon(Icons.clean_hands_sharp, color: Theme.of(context).colorScheme.secondary,),
                        Text("Disaster", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),)
                      ],
                    ),
                    Text("Support disaster-affected families with food, shelter, and emergency assistance.", style: TextStyle(color: Colors.grey),),
                    Container(
                      decoration: BoxDecoration(
                      color: Colors.grey.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top:8.r, bottom: 8.r, right: 15.r, left: 15.r),
                        child: Row(
                          spacing: 8.r,
                          mainAxisAlignment: .start,
                          crossAxisAlignment: .center,
                          children: [
                            Icon(Icons.account_balance_outlined, size: 25.r,),
                            Text("Organised by: Ajay Kumar Garg")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.r),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ViewDonationPage(),));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                            color: Colors.green,
                            width: 1
                        )
                    ),
                    child: Row(
                      spacing: 8.r,
                      mainAxisAlignment: .center,
                      crossAxisAlignment: .center,
                      children: [
                        Icon(Icons.remove_red_eye, color: Colors.green,),
                        Text("VIEW", style: TextStyle(color: Colors.green, fontWeight: .bold),)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 10.w,
            right: 5.w,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Padding(
                padding:  EdgeInsets.all(8.r),
                child: Icon(Icons.more_vert),
              ),
            ),
          ),
          Positioned(
            top: 155.h,
            left: 10.r,
            right: 10.r,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurStyle: .outer, blurRadius: 5,spreadRadius: 1),
                ]
              ),
              height: 165.w,
              width: MediaQuery.of(context).size.width/1.2,
              child: Padding(
                padding: EdgeInsets.all(8.r),
                child: Column(
                  spacing: 15.r,
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      crossAxisAlignment: .center,
                      children: [
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text("₹ 26,200.00", style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.secondary),),
                            Text("collected", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp, color: Colors.grey),)
                          ],
                        ),
                        Column(
                          crossAxisAlignment: .end,
                          children: [
                            Text("₹ 1,00,000.00", style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),),
                            Text("Target", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp, color: Colors.grey),)
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        height: 20.w,
                        child: Stack(
                          children: [
                            Align(
                              alignment: .centerLeft,
                              child: Container(
                                height: 10.w,
                                width: 345.w,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withValues(alpha: 0.3),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                              ),
                            ),
                            Align(
                              alignment: .centerLeft,
                              child: Container(
                                height: 10.w,
                                width: 30.w,
                                decoration: BoxDecoration(
                                    color: Colors.redAccent.shade700,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                              ),
                            ),
                            Positioned(
                              left: 25.w,
                              top: 5.w,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.redAccent.shade700,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.r),
                                  child: Text("3%", style: TextStyle(color: Theme.of(context).colorScheme.surface, fontWeight: FontWeight.bold, fontSize: 12.sp),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      spacing: 8.r,
                      children: [
                        Icon(Icons.calendar_month),
                        Text("28-May-2026")
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
