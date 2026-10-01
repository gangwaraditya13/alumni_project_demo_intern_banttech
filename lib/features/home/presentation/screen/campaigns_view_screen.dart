import 'package:alumni/features/home/presentation/widgets/home_screen_part_9_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class CampaignsViewScreen extends StatelessWidget {
  const CampaignsViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trending Campaigns", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: ListView.builder(itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
            height: 450.h,
            child: HomeScreenPart9Card()),
      ),itemCount: 5,),
    );
  }
}
