import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AcademicInfoScreen extends StatelessWidget {
  const AcademicInfoScreen ({super.key});

  @override
  Widget build(BuildContext context) {

    TextStyle _styleHeading = TextStyle(color: Colors.grey, fontSize: 12.sp);
    TextStyle  _styleInfo = TextStyle(fontSize: 12.sp);
    TextStyle _heading = TextStyle(fontSize: 12.sp, fontWeight: .bold);

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
            spacing: 8.r,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 8.r,bottom: 8.r),
                child: Text("Academic Information", style: TextStyle(fontWeight: .bold, fontSize: 19.sp),),
              ),
              Container(
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: Colors.grey.withValues(alpha: 0.5)),
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 4.r,
                  children: [
                    Text("High School 10th", style: _heading,),
                    Text("MVM", style: _heading,),
                    Padding(
                      padding: EdgeInsets.only(top: 8.r),
                      child: Table(
                          columnWidths: {
                            0: IntrinsicColumnWidth(),
                            1: FixedColumnWidth(10),
                            2: FlexColumnWidth(),
                          },
                        children: [
                          TableRow(
                            children: [
                              TableCell(child: Text('BOARD', style: _styleHeading,)),
                              TableCell(child: Text(':',)),
                              TableCell(child: Text('CBSE - Central board of Secondary Education', style: _styleInfo,)),
                            ]
                          ),
                          TableRow(
                              children: [
                                TableCell(child: Text('RESULT TYPE    ', style: _styleHeading,)),
                                TableCell(child: Text(': ',)),
                                TableCell(child: Text(' Percentage', style: _styleInfo,)),
                              ]
                          ),
                          TableRow(
                              children: [
                                TableCell(child: Text('RESULT    ', style: _styleHeading,)),
                                TableCell(child: Text(': ',)),
                                TableCell(child: Text(' 84.96', style: _styleInfo,)),
                              ]
                          ),
                          TableRow(
                              children: [
                                TableCell(child: Text('YEAR OF PASSING    ', style: _styleHeading,)),
                                TableCell(child: Text(': ',)),
                                TableCell(child: Text(' 2017', style: _styleInfo,)),
                              ]
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: Colors.grey.withValues(alpha: 0.5)),
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 4.r,
                  children: [
                    Text("Intermediate 12th", style: _heading,),
                    Text("N/A", style: _heading,),
                    Padding(
                      padding: EdgeInsets.only(top: 8.r),
                      child: Table(
                        columnWidths: {
                          0: IntrinsicColumnWidth(),
                          1: FixedColumnWidth(10),
                          2: FlexColumnWidth(),
                        },
                        children: [
                          TableRow(
                              children: [
                                TableCell(child: Text('BOARD    ', style: _styleHeading,)),
                                TableCell(child: Text(': ')),
                                TableCell(child: Text(' N/A', style: _styleInfo,)),
                              ]
                          ),
                          TableRow(
                              children: [
                                TableCell(child: Text('STREAM    ', style: _styleHeading,)),
                                TableCell(child: Text(': ',)),
                                TableCell(child: Text(' N/A', style: _styleInfo,)),
                              ]
                          ),
                          TableRow(
                              children: [
                                TableCell(child: Text('YEAR OF PASSING    ', style: _styleHeading,)),
                                TableCell(child: Text(': ',)),
                                TableCell(child: Text(' N/A', style: _styleInfo,)),
                              ]
                          ),
                          TableRow(
                              children: [
                                TableCell(child: Text('RESULT TYPE    ', style: _styleHeading,)),
                                TableCell(child: Text(': ',)),
                                TableCell(child: Text(' N/A', style: _styleInfo,)),
                              ]
                          ),
                          TableRow(
                              children: [
                                TableCell(child: Text('RESULT    ', style: _styleHeading,)),
                                TableCell(child: Text(': ',)),
                                TableCell(child: Text(' N/A', style: _styleInfo,)),
                              ]
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: Colors.grey.withValues(alpha: 0.5)),
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 4.r,
                  children: [
                    Text("Diploma", style: _heading,),
                    Text("N/A", style: _heading,),
                    Padding(
                      padding: EdgeInsets.only(top: 8.r),
                      child: Table(
                        columnWidths: {
                          0: IntrinsicColumnWidth(),
                          1: FixedColumnWidth(10),
                          2: FlexColumnWidth(),
                        },
                        children: [
                          TableRow(
                              children: [
                                TableCell(child: Text('BOARD    ', style: _styleHeading,)),
                                TableCell(child: Text(': ')),
                                TableCell(child: Text(' N/A', style: _styleInfo,)),
                              ]
                          ),
                          TableRow(
                              children: [
                                TableCell(child: Text('STREAM    ', style: _styleHeading,)),
                                TableCell(child: Text(': ',)),
                                TableCell(child: Text(' N/A', style: _styleInfo,)),
                              ]
                          ),
                          TableRow(
                              children: [
                                TableCell(child: Text('YEAR OF PASSING    ', style: _styleHeading,)),
                                TableCell(child: Text(':' ,)),
                                TableCell(child: Text(' N/A', style: _styleInfo,)),
                              ]
                          ),
                          TableRow(
                              children: [
                                TableCell(child: Text('RESULT TYPE    ', style: _styleHeading,)),
                                TableCell(child: Text(': ',)),
                                TableCell(child: Text(' N/A', style: _styleInfo,)),
                              ]
                          ),
                          TableRow(
                              children: [
                                TableCell(child: Text('RESULT (CGPA)    ', style: _styleHeading,)),
                                TableCell(child: Text(': ',)),
                                TableCell(child: Text(' N/A', style: _styleInfo,)),
                              ]
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: Colors.grey.withValues(alpha: 0.5)),
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 4.r,
                  children: [
                    Text("Graduation (if Applicable)", style: _heading,),
                    Text("N/A", style: _heading,),
                    Padding(
                      padding: EdgeInsets.only(top: 8.r),
                      child: Table(
                        columnWidths: {
                          0: IntrinsicColumnWidth(),
                          1: FixedColumnWidth(10),
                          2: FlexColumnWidth(),
                        },
                        children: [
                          TableRow(
                              children: [
                                TableCell(child: Text('DEGREE    ', style: _styleHeading,)),
                                TableCell(child: Text(':')),
                                TableCell(child: Text(' N/A', style: _styleInfo,)),
                              ]
                          ),
                          TableRow(
                              children: [
                                TableCell(child: Text('STREAM    ', style: _styleHeading,)),
                                TableCell(child: Text(':',)),
                                TableCell(child: Text(' N/A', style: _styleInfo,)),
                              ]
                          ),
                          TableRow(
                              children: [
                                TableCell(child: Text('YEAR OF PASSING    ', style: _styleHeading,)),
                                TableCell(child: Text(':',)),
                                TableCell(child: Text(' N/A', style: _styleInfo,)),
                              ]
                          ),
                          TableRow(
                              children: [
                                TableCell(child: Text('RESULT TYPE    ', style: _styleHeading,)),
                                TableCell(child: Text(':',)),
                                TableCell(child: Text(' N/A', style: _styleInfo,)),
                              ]
                          ),
                          TableRow(
                              children: [
                                TableCell(child: Text('RESULT (CBSE)    ', style: _styleHeading,)),
                                TableCell(child: Text(':',)),
                                TableCell(child: Text(' N/A', style: _styleInfo,)),
                              ]
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(height: 30.w,)
      ],
    );
  }
}
