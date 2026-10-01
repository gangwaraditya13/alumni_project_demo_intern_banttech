import 'package:alumni/features/home/presentation/widgets/home_page_part_10_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ProgramViewAllScreen extends StatelessWidget {
  const ProgramViewAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scholarships",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: ListView.builder(itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(left: 20.r, right: 20.r, bottom: 15.r),
        child: HomePagePart10Card(),
      ), itemCount: 5,),
    );
  }
}
