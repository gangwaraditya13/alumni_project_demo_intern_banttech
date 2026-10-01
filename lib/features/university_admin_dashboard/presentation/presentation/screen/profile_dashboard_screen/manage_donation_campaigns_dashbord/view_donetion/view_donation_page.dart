import 'dart:async';

import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/profile_dashboard_screen/manage_donation_campaigns_dashbord/view_donetion/view_all_Donor.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/dashboard_widgets/app_bar_icon.dart';
import 'package:alumni/features/university_admin_dashboard/presentation/presentation/screen/widgets/profile_circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:video_player/video_player.dart';

class ViewDonationPage extends StatefulWidget {
  const ViewDonationPage({super.key});

  @override
  State<ViewDonationPage> createState() => _ViewDonationPageState();
}

class _ViewDonationPageState extends State<ViewDonationPage> {
  final List<String> bnrImages = [
    "https://plus.unsplash.com/premium_photo-1721755992476-3df0ab7188c2?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1721755988943-e51267c1ce94?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1726495630134-4f2755fa0fbd?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1663013221431-397d5a386990?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ];

  final List<List<String>> recentDonation = [
    [
      "https://plus.unsplash.com/premium_photo-1663013221431-397d5a386990?q=80&w=1771&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "Help Disaster Victims Rebuild Lives",
      "06 jun, 2026",
    ],
    [
      "https://plus.unsplash.com/premium_photo-1663013221431-397d5a386990?q=80&w=1771&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "Support Child Education, Campaign",
      "05 jun, 2026",
    ],
    [
      "https://plus.unsplash.com/premium_photo-1663013221431-397d5a386990?q=80&w=1771&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "Medical Emergency Relief Fund",
      "04 Jun, 2026",
    ],
  ];

  Timer? timer;
  late PageController _pageController;
  int _currentPage = 0;

  late VideoPlayerController _videoPlayerController;
  
  ValueNotifier<bool> videoPlayAndPause = ValueNotifier(true);
  
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage < bnrImages.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      setState(() {});
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
    
    _videoPlayerController = VideoPlayerController.asset("lib/assets/video/goldMedalOlympicGames.mp4");
    _videoPlayerController.initialize();
    _videoPlayerController.setLooping(true);
  }
  @override
  void dispose() {
    timer?.cancel();
    _pageController.dispose();
    _videoPlayerController.dispose();
    videoPlayAndPause.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [ProfileCircularAvatar()],
        actionsPadding: EdgeInsets.only(right: 15.r),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 8.r,
          bottom: 10.r,
          left: 15.r,
          right: 15.r,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 550.w,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.4),
                      spreadRadius: 0,
                      blurRadius: 4,
                      blurStyle: .outer,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 8.r,
                  children: [
                    Container(
                      height: 250.w,
                      width: MediaQuery.of(context).size.width,
                      clipBehavior: .antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          topRight: Radius.circular(12.r),
                        ),
                      ),
                      child: Stack(
                        children: [
                          PageView.builder(
                            controller: _pageController,
                            itemBuilder: (context, index) => Container(
                              height: 250.w,
                              child: Image.network(bnrImages[index], fit: .cover),
                            ),
                            itemCount: bnrImages.length,
                          ),
                          Align(
                            alignment: .center,
                            child: Padding(
                              padding: EdgeInsets.all(8.r),
                              child: Row(
                                mainAxisAlignment: .spaceBetween,
                                children: [
                                  Container(
                                    width: 30.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.surface,
                                      borderRadius: BorderRadius.circular(50.r),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        if (_currentPage != 0) _currentPage--;
                                        setState(() {});
                                        _pageController.animateToPage(
                                          _currentPage,
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.easeIn,
                                        );
                                      },
                                      icon: Icon(
                                        Icons.arrow_back_ios,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.secondary,
                                        size: 15.r,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 30.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.surface,
                                      borderRadius: BorderRadius.circular(50.r),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        if (_currentPage < bnrImages.length - 1)
                                          _currentPage++;
                                        setState(() {});
                                        _pageController.animateToPage(
                                          _currentPage,
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.easeIn,
                                        );
                                      },
                                      icon: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.secondary,
                                        size: 15.r,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: .bottomRight,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.r),
                                  color: Colors.black.withValues(alpha: 0.5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 4.r,
                                    bottom: 4.r,
                                    left: 10.r,
                                    right: 10.r,
                                  ),
                                  child: Text(
                                    "${_currentPage + 1} / ${bnrImages.length}",
                                    style: TextStyle(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.surface,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 170.w,
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
                                    Text(
                                      "₹ 26,200.00",
                                      style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.secondary,
                                      ),
                                    ),
                                    Text(
                                      "collected",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: .end,
                                  children: [
                                    Text(
                                      "₹ 1,00,000.00",
                                      style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Target",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
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
                                        width: 400.w,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withValues(
                                            alpha: 0.3,
                                          ),
                                          borderRadius: BorderRadius.circular(20),
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
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 25.w,
                                      top: 5.w,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.redAccent.shade700,
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.r),
                                          child: Text(
                                            "3%",
                                            style: TextStyle(
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.surface,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              spacing: 8.r,
                              mainAxisAlignment: .end,
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                                Text("28-May-2026"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.r),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            "Help Disaster Victims Rebuild Lives",
                            style: TextStyle(fontSize: 21.sp, fontWeight: .bold),
                          ),
                          Text(
                            "Support disaster-affected families with food shelter and emergency assistance",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurStyle: .outer,
                      blurRadius: 6,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.r,
                        vertical: 12.r,
                      ),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12.r),
                          topLeft: Radius.circular(12.r),
                        ),
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      child: Text(
                        "Cause Details",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: .bold,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.r),
                      child: Table(
                        children: [
                          TableRow(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade300),
                              ),
                            ),
                            children: [
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.r),
                                  child: Text(
                                    "Target Amount",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.r),
                                  child: Text(
                                    "Rs. 200000",
                                    textAlign: .end,
                                    style: TextStyle(
                                      fontWeight: .bold,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade300),
                              ),
                            ),
                            children: [
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.r),
                                  child: Text(
                                    "Minimum Amount",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.r),
                                  child: Text(
                                    "Rs. 10000",
                                    textAlign: .end,
                                    style: TextStyle(
                                      fontWeight: .bold,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade300),
                              ),
                            ),
                            children: [
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.r),
                                  child: Text(
                                    "'Total Collected Amount",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.r),
                                  child: Text(
                                    "Rs. 182000",
                                    textAlign: .end,
                                    style: TextStyle(
                                      fontWeight: .bold,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade300),
                              ),
                            ),
                            children: [
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.r),
                                  child: Text(
                                    "'valid Form",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.r),
                                  child: Text(
                                    "2026-05-08",
                                    textAlign: .end,
                                    style: TextStyle(
                                      fontWeight: .bold,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.r),
                                  child: Text(
                                    "Valid Upto",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.r),
                                  child: Text(
                                    "2026-05-10",
                                    textAlign: .end,
                                    style: TextStyle(
                                      fontWeight: .bold,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.r,
                        vertical: 8.r,
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: 12.r,
                        vertical: 8.r,
                      ),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Theme.of(
                          context,
                        ).colorScheme.primary.withValues(alpha: 0.3),
                      ),
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text(
                            "Status",
                            style: TextStyle(fontWeight: .bold, fontSize: 18.sp),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.r,
                              vertical: 4.r,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.r),
                              color: Colors.green,
                            ),
                            child: Text(
                              "ACTIVE",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.surface,
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Container(
                height: 466.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0,
                      blurRadius: 6,
                      blurStyle: .outer,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.r,
                        vertical: 13.r,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          topRight: Radius.circular(12.r),
                        ),
                      ),
                      child: Row(
                        spacing: 8.r,
                        children: [
                          Icon(
                            Icons.list_alt_rounded,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                          Text(
                            "Recent Donations",
                            style: TextStyle(
                              fontSize: 21.r,
                              fontWeight: .bold,
                              color: Theme.of(context).colorScheme.surface,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            Padding(
                              padding:EdgeInsets.all(8.r),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 6.r,horizontal: 7.r),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.withValues(alpha: 0.5)))
                                ),
                                child: Row(
                                  crossAxisAlignment: .start,
                                  spacing: 8.r,
                                  children: [
                                    Container(
                                      height: 110.w,
                                      width: 110.w,
                                      clipBehavior: .antiAlias,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.r),
                                      ),
                                      child: Image.network(recentDonation[index][0], fit: .cover,),
                                    ),
                                    Expanded(
                                      child: Column(
                                        spacing: 8.r,
                                        mainAxisAlignment: .start,
                                        children: [
                                          Text("${recentDonation[index][1]}", style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontWeight: .bold, fontSize: 18.sp),),
                                          Row(
                                            spacing: 8.r,
                                            children: [
                                              Icon(Icons.date_range, color: Theme.of(context).colorScheme.secondary,),
                                              Text(recentDonation[index][2]),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                        ,itemCount: recentDonation.length,),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 8.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: Colors.grey)
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 15.r,
                  children: [
                    Column(
                      crossAxisAlignment: .start,
                      spacing: 8.r,
                      children: [
                        Row(
                          spacing: 8.r,
                          children: [
                            Icon(Icons.image_outlined, color: Theme.of(context).colorScheme.secondary,),
                            Text("Photo Gallery", style: TextStyle(fontSize: 18.sp,fontWeight: .bold),)
                          ],
                        ),
                        Container(
                          height: 2.5.w,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.r),
                              color: Theme.of(context).colorScheme.secondary
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 110.w,
                      height: 110.w,
                      clipBehavior: .antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r)
                      ),
                      child: Image.network("https://plus.unsplash.com/premium_photo-1663013221431-397d5a386990?q=80&w=1771&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", fit: .cover,),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Container(
                height: 410.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: Colors.grey)
                ),
                child: Padding(
                  padding: EdgeInsets.all(12.r),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: .start,
                        spacing: 10.r,
                        children: [
                          Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Row(
                                spacing: 8.r,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 4.r, vertical: 4.r),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).colorScheme.secondary,
                                      borderRadius: BorderRadius.circular(4.r)
                                    ),
                                    child: Icon(Icons.receipt_long,size: 20.r, color: Theme.of(context).colorScheme.surface,),
                                  ),
                                  Text("Donor List", style: TextStyle(fontWeight: .bold, fontSize: 18.sp),)
                                ],
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAllDonor(),));
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12.r, vertical: 5.r),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withValues(alpha: 0.34),
                                    borderRadius: BorderRadius.circular(25.r)
                                  ),
                                  child: Row(
                                    spacing: 4.r,
                                    children: [
                                      Icon(Icons.remove_red_eye, color: Theme.of(context).colorScheme.secondary,),
                                      Text("View All", style: TextStyle(fontWeight: .bold, fontSize: 18.sp),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 2.5.w,
                            width: 140.w,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(25.r),
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(
                          child: ListView.builder(
                            itemBuilder:
                                (context, index) => Container(
                                  width: 300.w,
                                  margin: EdgeInsets.all(8.r),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      border: Border.all(color: Colors.grey)
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(15.r),
                                    child: Column(
                                      spacing: 10.r,
                                      children: [
                                        Row(
                                          spacing: 15.r,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(4.r),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(50.r),
                                                  boxShadow: [
                                                    BoxShadow(color: Colors.grey.withValues(alpha: 0.5), spreadRadius: 0, blurStyle: .outer, blurRadius: 6)
                                                  ]
                                                ),
                                                child: Icon(Icons.person,size: 20.r, color: Theme.of(context).colorScheme.secondary,),),
                                            Text("Mr Rohit", style: TextStyle(fontWeight: .bold, fontSize: 16.sp, color: Theme.of(context).colorScheme.secondary),)
                                          ],
                                        ),
                                        Row(
                                          spacing: 15.r,
                                          children: [
                                            AppBarIcon(icons: Icon(Icons.groups, color: Theme.of(context).colorScheme.secondary, size: 20.r,), color: Theme.of(context).colorScheme.primary,),
                                            Column(
                                              crossAxisAlignment: .start,
                                              children: [
                                                Text("Type", style: TextStyle(color: Colors.grey, fontSize: 16.sp),),
                                                Text("Student", style: TextStyle(fontWeight: .bold, fontSize: 16.sp),),
                                              ],
                                            )
                                          ],
                                        ),
                                        Divider(color: Colors.grey.shade400,),
                                        Row(
                                          spacing: 15.r,
                                          children: [
                                            AppBarIcon(icons: Icon(Icons.email_outlined, color: Colors.blueAccent, size: 15.r,)),
                                            Column(
                                              crossAxisAlignment: .start,
                                              children: [
                                                Text("Email", style: TextStyle(color: Colors.grey, fontSize: 16.sp),),
                                                Text("amaam.banttech@gmail.com", style: TextStyle(fontWeight: .bold, fontSize: 16.sp),),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          spacing: 15.r,
                                          children: [
                                            AppBarIcon(icons: Icon( size: 20.r, Icons.phone, color: Theme.of(context).colorScheme.secondary,), color: Theme.of(context).colorScheme.primary,),
                                            Text.rich(TextSpan(
                                              text: "Mobile : ",
                                              style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontWeight: .bold, fontSize: 16.sp),
                                              children: [
                                                TextSpan(
                                                  text: "8218111022",
                                                  style: TextStyle(fontWeight: .bold, color: Colors.black, fontSize: 16.sp)
                                                )
                                              ]
                                            ))
                                          ],
                                        ),
                                        Row(
                                          spacing: 15.r,
                                          children: [
                                            AppBarIcon(icons: Icon( size: 20.r, Icons.clean_hands_sharp, color: Colors.green,), color: Colors.green,),
                                            Text.rich(TextSpan(
                                                text: "Donation : ",
                                                style: TextStyle(color: Colors.green, fontWeight: .bold, fontSize: 16.sp),
                                                children: [
                                                  TextSpan(
                                                      text: "₹6,000.00",
                                                      style: TextStyle(fontWeight: .bold, color: Colors.black, fontSize: 16.sp)
                                                  )
                                                ]
                                            ))
                                          ],
                                        ),
                                        Row(
                                          spacing: 15.r,
                                          children: [
                                            AppBarIcon(icons: Icon( size: 20.r, Icons.date_range, color: Colors.purple,), color: Colors.purple,),
                                            Text.rich(TextSpan(
                                                text: "Donation Date : ",
                                                style: TextStyle(color: Colors.purple, fontWeight: .bold, fontSize: 16.sp),
                                                children: [
                                                  TextSpan(
                                                      text: "8218111022",
                                                      style: TextStyle(fontWeight: .bold, color: Colors.black, fontSize: 16.sp)
                                                  )
                                                ]
                                            ))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ,itemCount: 5
                            ,scrollDirection: .horizontal,),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.w),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: Colors.grey)
                ),
                child: Padding(
                  padding: EdgeInsets.all(12.r),
                  child: Column(
                    spacing: 15.r,
                    children: [
                      Column(
                        crossAxisAlignment: .start,
                        spacing: 8.r,
                        children: [
                          Row(
                            spacing: 8.r,
                            children: [
                              Icon(Icons.videocam_rounded, color: Colors.brown,),
                              Text("Campaign Video", style: TextStyle(fontSize: 18.sp,fontWeight: .bold),)
                            ],
                          ),
                          Container(
                            height: 3.w,
                            width: 100.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.r),
                                color: Colors.brown
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 350.w,
                        width: 350.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: Colors.grey)
                        ),
                        clipBehavior: .antiAlias,
                        child: Stack(
                          children: [
                            VideoPlayer(_videoPlayerController),
                            Align(
                              alignment: .center,
                              child: ValueListenableBuilder(
                                valueListenable: videoPlayAndPause,
                                  builder: (context, value, child) {
                                    return IconButton(onPressed: (){
                                      videoPlayAndPause.value = !videoPlayAndPause.value;
                                      if(value){
                                        _videoPlayerController.play();
                                      }else{
                                        _videoPlayerController.pause();
                                      }
                                    }, icon: Container( height: 40.w,
                                        width: 40.w,
                                        decoration: BoxDecoration(
                                            color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.5),
                                            borderRadius: BorderRadius.circular(50.r)
                                        ),
                                        child: Icon(value?Icons.play_arrow:Icons.pause)));
                                  },
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.w),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: Colors.grey)
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 10.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(12.r), topLeft: Radius.circular(12.r)),
                        color: Theme.of(context).colorScheme.secondary
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.grid_view_rounded, color: Theme.of(context).colorScheme.surface,),
                          Text("Categories", style: TextStyle(fontSize: 18.sp, fontWeight: .bold, color: Theme.of(context).colorScheme.surface),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 15.r),
                      child: Column(
                        spacing: 8.r,
                        children: [
                          Row(
                            spacing: 8.r,
                            children: [
                              Icon(Icons.pets, color: Theme.of(context).colorScheme.secondary,),
                              Text("Animal Care", style: TextStyle(fontWeight: .w500, fontSize: 18.sp),)
                            ],
                          ),
                          Divider(
                            color: Colors.grey.withValues(alpha: 0.5),
                          ),
                          Row(
                            spacing: 8.r,
                            children: [
                              Icon(Icons.child_care, color: Theme.of(context).colorScheme.secondary,),
                              Text("Animal Care", style: TextStyle(fontWeight: .w500, fontSize: 18.sp),)
                            ],
                          ),
                          Divider(
                            color: Colors.grey.withValues(alpha: 0.5),
                          ),
                          Row(
                            spacing: 8.r,
                            children: [
                              Icon(Icons.clean_hands, color: Theme.of(context).colorScheme.secondary,),
                              Text("Animal Care", style: TextStyle(fontWeight: .w500, fontSize: 18.sp),)
                            ],
                          ),
                          Divider(
                            color: Colors.grey.withValues(alpha: 0.5),
                          ),
                          Row(
                            spacing: 8.r,
                            children: [
                              Icon(Icons.school, color: Theme.of(context).colorScheme.secondary,),
                              Text("Animal Care", style: TextStyle(fontWeight: .w500, fontSize: 18.sp),)
                            ],
                          ),
                          Divider(
                            color: Colors.grey.withValues(alpha: 0.5),
                          ),
                          Row(
                            spacing: 8.r,
                            children: [
                              Icon(Icons.health_and_safety, color: Theme.of(context).colorScheme.secondary,),
                              Text("Animal Care", style: TextStyle(fontWeight: .w500, fontSize: 18.sp),)
                            ],
                          ),
                          Divider(
                            color: Colors.grey.withValues(alpha: 0.5),
                          ),
                          Row(
                            spacing: 8.r,
                            children: [
                              Icon(Icons.monitor_heart_sharp, color: Theme.of(context).colorScheme.secondary,),
                              Text("Animal Care", style: TextStyle(fontWeight: .w500, fontSize: 18.sp),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
            ],
          ),
        ),
      ),
    );
  }
}
