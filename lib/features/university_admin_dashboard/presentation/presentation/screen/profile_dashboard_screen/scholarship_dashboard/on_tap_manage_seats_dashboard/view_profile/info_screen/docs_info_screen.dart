import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/scholarship_widget/info_screen_widgets/docs_tile.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/scholarship_widget/info_screen_widgets/heading_row_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class DocsInfoScreen extends StatelessWidget {
  DocsInfoScreen({super.key});

  TextStyle _styleheading = TextStyle(fontWeight: .bold, fontSize: 12.sp);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8.r),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Theme.of(context).colorScheme.surface
          ),
          child: Column(
            crossAxisAlignment: .start,
            spacing: 15.r,
            children: [
              Text("Documents & References", style: TextStyle(fontSize: 19.sp, fontWeight: .bold),),
              HeadingRowInfo(widget: Text("ACADEMIC CERTIFICATES", style: _styleheading,), height: 11.w),
              DocsTile(title: "High School - 10th",),
              HeadingRowInfo(widget: Text("MANDATORY DOCUMENTS", style: _styleheading,), height: 11.w),
              Column(
                spacing: 8.r,
                children: [
                  DocsTile(title: "Profile Photo",),
                  DocsTile(title: "Government ID Proof",),
                  DocsTile(title: "Birth Certificate",),
                  DocsTile(title: "Address Proof",),
                ],
              ),

              HeadingRowInfo(widget: Text("SPORTS-RELATED DOCUMENTS", style: _styleheading,), height: 11.w),
              DocsTile(title: "Medical Fitness Certificate",),
              HeadingRowInfo(widget: Text("REFERENCES", style: _styleheading,), height: 11.w),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(8.r),
                    height: 135.w,
                    width: MediaQuery.of(context).size.width/2.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: Colors.grey.shade300)
                    ),
                    child: Column(
                      spacing: 3.r,
                      children: [
                        Row(
                          spacing: 4.r,
                          children: [
                            CircleAvatar(
                              radius: 17.r,
                              foregroundImage: NetworkImage("https://images.unsplash.com/photo-1623200693945-ec1e9991039a?q=80&w=1126&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                            ),
                            Column(
                              children: [
                                Text("N/A", style: TextStyle(fontWeight: .bold),),
                                Text("N/A", style: TextStyle(fontSize: 12.sp),)
                              ],
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: .start,
                          spacing: 4.r,
                          children: [
                            Icon(Icons.food_bank_rounded, color: Colors.blue.shade500,),
                            Expanded(child: Text("Organisation: N/A | Relation: N/A", style: TextStyle(fontSize: 12.sp),))
                          ],
                        ),
                        Row(
                          spacing: 4.r,
                          children: [
                            Icon(Icons.mail_outline,size: 15.r, color: Theme.of(context).colorScheme.primary,),
                            Text("N/A", style: TextStyle(fontSize: 12.sp),)
                          ],
                        ),
                        Row(
                          spacing: 4.r,
                          children: [
                            Icon(Icons.phone,size: 15.r,),
                            Text("N/A", style: TextStyle(fontSize: 12.sp),)
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.r),
                    height: 135.w,
                    width: MediaQuery.of(context).size.width/2.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: Colors.grey.shade300)
                    ),
                    child: Column(
                      spacing: 3.r,
                      children: [
                        Row(
                          spacing: 4.r,
                          children: [
                            CircleAvatar(
                              radius: 17.r,
                              foregroundImage: NetworkImage("https://images.unsplash.com/photo-1623200693945-ec1e9991039a?q=80&w=1126&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                            ),
                            Column(
                              children: [
                                Text("N/A", style: TextStyle(fontWeight: .bold),),
                                Text("N/A", style: TextStyle(fontSize: 12.sp),)
                              ],
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: .start,
                          spacing: 4.r,
                          children: [
                            Icon(Icons.food_bank_rounded, color: Colors.blue.shade500,),
                            Expanded(child: Text("Organisation: N/A | Relation: N/A", style: TextStyle(fontSize: 12.sp),))
                          ],
                        ),
                        Row(
                          spacing: 4.r,
                          children: [
                            Icon(Icons.mail_outline,size: 15.r, color: Theme.of(context).colorScheme.primary,),
                            Text("N/A", style: TextStyle(fontSize: 12.sp),)
                          ],
                        ),
                        Row(
                          spacing: 4.r,
                          children: [
                            Icon(Icons.phone,size: 15.r,),
                            Text("N/A", style: TextStyle(fontSize: 12.sp),)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 40.w,
        )
      ],
    );
  }
}
