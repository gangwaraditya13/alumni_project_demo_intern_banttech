import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/scholarship_widget/info_screen_widgets/heading_row_info.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/scholarship_widget/info_screen_widgets/personal_info_detail_tile.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/scholarship_widget/info_screen_widgets/phisical_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';


class SportInfoScreen extends StatelessWidget {
  const SportInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final data = [
      ("177.00", "cm", "Height"),
      ("68.00", "kg", "Weight"),
      ("140.00", "cm", "Wingspan"),
      ("47.00", "cm", "Chest"),
      ("52.00", "cm", "Waist"),
      ("N/A", "", "Body Fat %"),
      ("Intermediate", "", "Fitness Level"),
    ];

    TextStyle _tableCellStyle = TextStyle(fontSize: 12.sp);
    TextStyle _tableCellHeadingStyle = TextStyle(fontSize: 12.sp, color: Theme.of(context).colorScheme.surface,);

    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: Theme.of(context).colorScheme.surface,
          ),
          child: Column(
            spacing: 8.r,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8.r),
                child: Text(
                  "Sports Matrix",
                  style: TextStyle(fontSize: 19.sp, fontWeight: .bold),
                ),
              ),

              HeadingRowInfo(
                widget: const Text("PRIMARY SUPPORT PROFILE", style: TextStyle(fontWeight: .bold),),
                height: 14.w,
              ),

              PersonalInfoDetailTile(
                width: screenWidth / 1.5,
                title: "PRIMARY SPORTS",
                info: "Cricket",
                titleFontSize: 12.sp,
                infoFontSize: 13.sp,
              ),

              PersonalInfoDetailTile(
                width: screenWidth / 1.5,
                title: "CURRENT CLUB / ACADEMY",
                info: "N/A",
                titleFontSize: 12.sp,
                infoFontSize: 13.sp,
              ),

              PersonalInfoDetailTile(
                width: screenWidth / 1.5,
                title: "COACH NAME",
                info: "N/A",
                titleFontSize: 12.sp,
                infoFontSize: 13.sp,
              ),

              PersonalInfoDetailTile(
                width: screenWidth / 1.5,
                title: "COACH CONTACT",
                info: "N/A",
                titleFontSize: 12.sp,
                infoFontSize: 13.sp,
              ),

              PersonalInfoDetailTile(
                width: screenWidth / 1.5,
                title: "YEARS OF TRAINING / EXPERIENCE",
                info: "4",
                titleFontSize: 12.sp,
                infoFontSize: 13.sp,
              ),

              HeadingRowInfo(
                widget: const Text("PHYSICAL METRICS", style: TextStyle(fontWeight: .bold),),
                height: 14.w,
              ),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 2,
                ),
                itemBuilder: (context, index) {
                  final item = data[index];

                  return PhysicalInfoCard(
                    info: item.$1,
                    unit: item.$2,
                    title: item.$3,
                  );
                },
              ),

              HeadingRowInfo(
                widget: const Text("COMPETITION &  RANKING", style: TextStyle(fontWeight: .bold),),
                height: 14.w,
              ),

              Container(
                clipBehavior: .antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: Colors.grey.shade300)
                ),
                child: Table(
                  children: [
                    TableRow(
                      decoration: BoxDecoration(
                        color: Colors.grey
                      ),
                      children: [
                        TableCell(child: Padding(
                          padding: EdgeInsets.only(left:15.r, right:15.r, top:15.r, bottom: 8.r),
                          child: Text("Level", style: _tableCellHeadingStyle,),
                        )),
                        TableCell(child: Padding(
                          padding: EdgeInsets.only(left:15.r, right:15.r, top:15.r, bottom: 8.r),
                          child: Text("AGE CATEGORY", style: _tableCellHeadingStyle,),
                        )),
                        TableCell(child: Padding(
                          padding: EdgeInsets.only(left:15.r, right:15.r, top:15.r, bottom: 8.r),
                          child: Text("BEST PERFORMANCE", style: _tableCellHeadingStyle,),
                        ))
                      ]
                    ),
                    TableRow(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey.shade300))
                      ),
                        children: [
                          TableCell(child: Padding(
                            padding: EdgeInsets.all(15.r),
                            child: Text("State", style: _tableCellStyle,),
                          )),
                          TableCell(child: Padding(
                            padding: EdgeInsets.all(15.r),
                            child: Text("N/A", style: _tableCellStyle,),
                          )),
                          TableCell(child: Padding(
                            padding: EdgeInsets.all(15.r),
                            child: Text("N/A", style: _tableCellStyle,),
                          ))
                        ]
                    ),
                    TableRow(
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey.shade300))
                        ),
                        children: [
                          TableCell(child: Padding(
                            padding: EdgeInsets.all(15.r),
                            child: Text("District", style: _tableCellStyle,),
                          )),
                          TableCell(child: Padding(
                            padding: EdgeInsets.all(15.r),
                            child: Text("N/A", style: _tableCellStyle,),
                          )),
                          TableCell(child: Padding(
                            padding: EdgeInsets.all(15.r),
                            child: Text("N/A", style: _tableCellStyle,),
                          ))
                        ]
                    ),
                    TableRow(
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey.shade300))
                        ),
                        children: [
                          TableCell(child: Padding(
                            padding: EdgeInsets.all(15.r),
                            child: Text("National", style: _tableCellStyle,),
                          )),
                          TableCell(child: Padding(
                            padding: EdgeInsets.all(15.r),
                            child: Text("N/A", style: _tableCellStyle,),
                          )),
                          TableCell(child: Padding(
                            padding: EdgeInsets.all(15.r),
                            child: Text("N/A", style: _tableCellStyle,),
                          ))
                        ]
                    ),
                  ],
                ),
              ),
              Row(
                spacing: 8.r,
                children: [
                  Text("International Participation :"),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: Colors.green)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top:4.r, bottom: 4.r, left: 8.r, right: 8.r),
                      child: Text("No", style: TextStyle(color: Colors.green),),
                    ),
                  )
                ],
              ),

              HeadingRowInfo(
                widget: const Text("MEDAL TALLY", style: TextStyle(fontWeight: .bold),),
                height: 14.w,
              ),

              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Container(
                    height: 115.w,
                    width: 115.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: Colors.grey.shade300)
                    ),
                    child: Column(
                      crossAxisAlignment: .center,
                      mainAxisAlignment: .center,
                      children: [
                        Container(
                          height: 20.w,
                          width: 20.w,
                          child: Image.asset("lib/assets/icons/img_10.png", fit: .cover,),
                        ),
                        Text("N/A", style: TextStyle(color: Colors.redAccent.shade700, fontWeight: .bold, fontSize: 12.sp),),
                        Text("GOLD", style: TextStyle(fontWeight: .bold, fontSize: 12.sp),)
                      ],
                    ),
                  ),
                  Container(
                    height: 115.w,
                    width: 115.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: Colors.grey.shade300)
                    ),
                    child: Column(
                      crossAxisAlignment: .center,
                      mainAxisAlignment: .center,
                      children: [
                        Container(
                          height: 20.w,
                          width: 20.w,
                          child: Image.asset("lib/assets/icons/img_10.png", fit: .cover,),
                        ),
                        Text("N/A", style: TextStyle(color: Colors.redAccent.shade700, fontWeight: .bold, fontSize: 12.sp),),
                        Text("SILVER", style: TextStyle(fontWeight: .bold, fontSize: 12.sp),)
                      ],
                    ),
                  ),
                  Container(
                    height: 115.w,
                    width: 115.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: Colors.grey.shade300)
                    ),
                    child: Column(
                      crossAxisAlignment: .center,
                      mainAxisAlignment: .center,
                      children: [
                        Container(
                          height: 20.w,
                          width: 20.w,
                          child: Image.asset("lib/assets/icons/img_10.png", fit: .cover,),
                        ),
                        Text("N/A", style: TextStyle(color: Colors.redAccent.shade700, fontWeight: .bold, fontSize: 12.sp),),
                        Text("BRONZE", style: TextStyle(fontWeight: .bold, fontSize: 12.sp),)
                      ],
                    ),
                  ),
                ],
              ),

              HeadingRowInfo(
                widget: const Text("INJURY / MEDICAL STATUS", style: TextStyle(fontWeight: .bold),),
                height: 14.w,
              ),
              PersonalInfoDetailTile(
                width: screenWidth / 1.5,
                title: "PREVIOUS INJURIES",
                info: "No",
                titleFontSize: 12.sp,
                infoFontSize: 13.sp,
              ),
              PersonalInfoDetailTile(
                width: screenWidth / 1.5,
                title: "RECOVERY STATUS",
                info: "N/A",
                titleFontSize: 12.sp,
                infoFontSize: 13.sp,
              ),
              PersonalInfoDetailTile(
                width: screenWidth / 1.5,
                title: "INJURY DERAILS",
                info: "N/A",
                titleFontSize: 12.sp,
                infoFontSize: 13.sp,
              ),

            ],
          ),
        ),
        Container(height: 30.w,)
      ],
    );
  }
}