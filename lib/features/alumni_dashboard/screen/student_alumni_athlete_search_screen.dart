import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class StudentAlumniAthleteSearchScreen extends StatefulWidget {
  const StudentAlumniAthleteSearchScreen({super.key});

  @override
  State<StudentAlumniAthleteSearchScreen> createState() =>
      _StudentAlumniAthleteSearchScreenState();
}

class _StudentAlumniAthleteSearchScreenState
    extends State<StudentAlumniAthleteSearchScreen> {

  final TextEditingController _textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 15.r, right: 7.r, top: 7.r),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 7.r, left: 7.r),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 10,blurStyle: .outer)
                  ]
                ),
                child: TextFormField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hint: Text("Search by Name, Mobile, Email", style: TextStyle(color: Colors.grey.withValues(alpha: 0.7)),),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 16.r, horizontal: 16.r),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      gapPadding: 0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: BorderSide(
                        color: Colors.grey.withValues(alpha: 0),
                        width: 2.w,
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2.w,
                      ),
                    ),

                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2.w,
                      ),
                    ),

                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2.w,
                      ),
                    ),
                  ),

                ),
              ),
            ),
            Expanded(child: Padding(
              padding: EdgeInsets.only(top: 8.r,),
              child: ListView.builder(itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(top:8.r, bottom: 8.r,right: 8.r,left: 8.r),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurStyle: .outer, blurRadius: 4, spreadRadius: 0.1),
                        BoxShadow(color: Colors.grey, blurStyle: .outer, blurRadius: 4, spreadRadius: 0.1),
                      ]
                  ),
                  constraints: BoxConstraints(
                    minHeight: 340.w,
                    maxHeight: 343.w
                  ),
                  child: Column(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Container(
                        clipBehavior: .antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(15.r), topLeft: Radius.circular(15.r)),
                        ),
                        child: Image.network("https://images.unsplash.com/photo-1461897104016-0b3b00cc81ee?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
                        height: 180.w,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.r, left: 8.r,right: 8.r),
                        child: Column(
                          crossAxisAlignment: .start,
                          spacing: 4.r,
                          children: [
                            Text("Sunny", style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 8.r),
                                  child: Icon(Icons.date_range),
                                ),
                                Text("May 29, 2026")
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 8.r),
                                  child: Icon(Icons.phone),
                                ),
                                Text("6556556656")
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 8.r),
                                  child: Icon(Icons.mail_outline),
                                ),
                                Text("sunny@gmail.com")
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 8.r),
                                  child: Icon(Icons.perm_identity_sharp),
                                ),
                                Text("Direct Registration")
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ), itemCount: 6,),
            )),
          ],
        ),
      ),
    );
  }
}
