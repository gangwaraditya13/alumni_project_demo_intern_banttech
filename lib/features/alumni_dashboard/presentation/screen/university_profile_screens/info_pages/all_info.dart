import 'package:alumni/features/university_admin_dashboard/presentation/widgets/university_profile_widget/ovel_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AllInfo extends StatelessWidget {
  const AllInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:15.r, vertical: 8.r),
      child: Column(
        spacing: 8.r,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Colors.grey),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:15.r, vertical: 8.r),
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
                            Icons.account_balance_outlined,
                            color: Theme.of(context).colorScheme.surface,
                            size: 18.r,
                          ),
                        ),
                      ),
                      Text(
                        "University Information",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 18.sp,
                          fontWeight: .bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.grey.shade300),
                Padding(
                  padding: EdgeInsets.all(15.r),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: .start,
                        spacing: 8.r,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  "Location",
                                  style: TextStyle(fontSize: 18.sp, fontWeight: .bold),
                                ),
                                Text(
                                  "27th KM Milestone, Delhi - Meerut Expressway, P.O. Adhyatmik Nagar, Ghaziabad, Uttar Pradesh, 201015",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey.shade300),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: .start,
                            spacing: 8.r,
                            children: [
                              Icon(
                                Icons.watch_later_outlined,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Text(
                                      "Founded",
                                      style: TextStyle(fontSize: 18.sp, fontWeight: .bold),
                                    ),
                                    Text("1892 - Over 130 years of excellence"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey.shade300),
                      Row(
                        crossAxisAlignment: .start,
                        spacing: 8.r,
                        children: [
                          Icon(
                            Icons.mail_outline,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(fontSize: 18.sp, fontWeight: .bold),
                              ),
                              Text("ajaykumar.banttech@gmail.com"),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey.shade300),
                      Row(
                        crossAxisAlignment: .start,
                        spacing: 8.r,
                        children: [
                          Icon(
                            Icons.phone_outlined,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                "Phone",
                                style: TextStyle(fontSize: 18.sp, fontWeight: .bold),
                              ),
                              Text("8218111036"),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey.shade300),
                      Row(
                        crossAxisAlignment: .start,
                        spacing: 8.r,
                        children: [
                          Icon(
                            Icons.business_outlined,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  "Campus",
                                  style: TextStyle(fontSize: 18.sp, fontWeight: .bold),
                                ),
                                Text("500 Acres • 120+ Buildings • 12 Schools"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey.shade300),
                      Column(
                        crossAxisAlignment: .start,
                        spacing: 8.r,
                        children: [
                          Row(
                            crossAxisAlignment: .start,
                            spacing: 8.r,
                            children: [
                              Icon(
                                Icons.mode_comment_outlined,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Text(
                                      "Type",
                                      style: TextStyle(fontSize: 18.sp, fontWeight: .bold),
                                    ),
                                    Text("Public Research University • Co-educational"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            spacing: 8.r,
                            runSpacing: 8.r,
                            children: [
                              OvelLabel(color: Theme.of(context).colorScheme.secondary,widget: Text("NAAC A++", style: TextStyle(color: Theme.of(context).colorScheme.surface),),),
                              OvelLabel(color: Theme.of(context).colorScheme.secondary,widget: Text("UGC Approved", style: TextStyle(color: Theme.of(context).colorScheme.surface),),),
                              OvelLabel(color: Theme.of(context).colorScheme.secondary,widget: Text("NIRF Rank 12", style: TextStyle(color: Theme.of(context).colorScheme.surface),),),
                              OvelLabel(color: Theme.of(context).colorScheme.secondary,widget: Text("QS World Top 500", style: TextStyle(color: Theme.of(context).colorScheme.surface),),),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Colors.grey),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:15.r, vertical: 8.r),
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
                                Icons.document_scanner,
                                color: Theme.of(context).colorScheme.surface,
                                size: 18.r,
                              ),
                            ),
                          ),
                          Text(
                            "Latest Blogs",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 18.sp,
                              fontWeight: .bold,
                            ),
                          ),
                        ],
                      ),
                      TextButton(onPressed: (){}, child: Text("See All", style: TextStyle(color: Theme.of(context).colorScheme.secondary),))
                    ],
                  ),
                ),
                Divider(color: Colors.grey.shade300),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 8.r),
                  child: Row(
                    spacing: 8.r,
                    crossAxisAlignment: .start,
                    children: [
                      Container(
                        height: 100.w,
                        width: 100.w,
                        clipBehavior: .antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Image.network("https://images.unsplash.com/photo-1720750964326-bf707651fe24?q=80&w=1601&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
                      ),
                      Expanded(
                        child: Column(
                          spacing: 8.r,
                          crossAxisAlignment: .start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 4.r),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.r),
                                border: Border.all(color: Theme.of(context).colorScheme.secondary)
                              ),
                              child: Text("PLACEMENT DRIVES",style: TextStyle(fontSize: 12.sp),),
                            ),
                            Text("Campus Placement Drive 2026", style: TextStyle(fontWeight: .bold, fontSize: 17.sp),),
                            Row(
                              spacing: 8.r,
                              children: [
                                Icon(Icons.calendar_today_outlined,color: Colors.grey,size: 14.r,),
                                Text("May 28, 2026",style: TextStyle(color: Colors.grey),)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(color: Colors.grey.shade300),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 8.r),
                  child: Row(
                    spacing: 8.r,
                    crossAxisAlignment: .start,
                    children: [
                      Container(
                        height: 100.w,
                        width: 100.w,
                        clipBehavior: .antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Image.network("https://images.unsplash.com/photo-1720750964326-bf707651fe24?q=80&w=1601&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
                      ),
                      Expanded(
                        child: Column(
                          spacing: 8.r,
                          crossAxisAlignment: .start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 4.r),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.r),
                                  border: Border.all(color: Theme.of(context).colorScheme.secondary)
                              ),
                              child: Text("EDUCATION",style: TextStyle(fontSize: 12.sp),),
                            ),
                            Text("Why Education Matters For Success", style: TextStyle(fontWeight: .bold, fontSize: 17.sp),),
                            Row(
                              spacing: 8.r,
                              children: [
                                Icon(Icons.calendar_today_outlined,color: Colors.grey,size: 14.r,),
                                Text("May 28, 2026",style: TextStyle(color: Colors.grey),)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Colors.grey),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:15.r, vertical: 8.r),
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
                      TextButton(onPressed: (){}, child: Text("See All", style: TextStyle(color: Theme.of(context).colorScheme.secondary),))
                    ],
                  ),
                ),
                Divider(color: Colors.grey.shade300),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 8.r),
                  child: Row(
                    spacing: 8.r,
                    mainAxisAlignment: .start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.r, vertical: 4.r),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Theme.of(context).colorScheme.secondary
                        ),
                        child: Column(
                          children: [
                            Text("MAY", style: TextStyle(color: Theme.of(context).colorScheme.surface, fontWeight: .bold, fontSize: 15.sp),),
                            Text("22", style: TextStyle(color: Theme.of(context).colorScheme.surface, fontWeight: .bold, fontSize: 18.sp),)
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text("Why Education Matters For Success", style: TextStyle(fontWeight: .bold, fontSize: 17.sp),),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 4.r),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.r),
                                  border: Border.all(color: Theme.of(context).colorScheme.secondary)
                              ),
                              child: Text("EDUCATION",style: TextStyle(fontSize: 12.sp),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100.w,
                        width: 100.w,
                        clipBehavior: .antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Image.network("https://images.unsplash.com/photo-1720750964326-bf707651fe24?q=80&w=1601&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
