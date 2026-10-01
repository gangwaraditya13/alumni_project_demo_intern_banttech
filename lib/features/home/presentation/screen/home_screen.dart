import 'dart:math';

import 'package:alumni/features/home/presentation/screen/events_upcoming_view_all_screen.dart';
import 'package:alumni/features/home/presentation/screen/join_the_network_aalumni_screen.dart';
import 'package:alumni/features/home/presentation/widgets/custom_painter_widgets/circles.dart';
import 'package:alumni/features/home/presentation/widgets/custom_painter_widgets/shape_painter.dart';
import 'package:alumni/features/home/presentation/screen/athlete_signup_screen.dart';
import 'package:alumni/features/home/presentation/screen/campaigns_view_screen.dart';
import 'package:alumni/features/home/presentation/screen/explore_universities_view_all_screen.dart';
import 'package:alumni/features/home/presentation/screen/get_started_university_screen.dart';
import 'package:alumni/features/home/presentation/screen/sign_in_screen.dart';
import 'package:alumni/features/home/presentation/screen/program_view_all_screen.dart';
import 'package:alumni/features/home/presentation/screen/student_signup_screen.dart';
import 'package:alumni/features/home/presentation/widgets/home_page_part_10_card.dart';
import 'package:alumni/features/home/presentation/widgets/home_screen_part_2_card.dart';
import 'package:alumni/features/home/presentation/widgets/home_screen_part_3_card.dart';
import 'package:alumni/features/home/presentation/widgets/home_screen_part_9_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final PageController _pageController = PageController(viewportFraction: 0.88);

  final List<List<String>> _universities = [
    [
      "Invertis University",
      "https://www.invertisuniversity.ac.in/images/logo.svg",
    ],
    [
      "Amity University",
      "https://images.seeklogo.com/logo-png/39/1/amity-university-logo-png_seeklogo-396047.png",
    ],
    [
      "Chandigarh University",
      "https://images.seeklogo.com/logo-png/43/1/chandigarh-university-cu-logo-png_seeklogo-432515.png",
    ],
    [
      "Lovely Professional University",
      "https://images.seeklogo.com/logo-png/34/2/lpu-sae-india-collegiate-club-logo-png_seeklogo-345773.png",
    ],
    [
      "Sharda University",
      "https://images.seeklogo.com/logo-png/42/1/sharda-university-logo-png_seeklogo-428233.pngn",
    ],
    [
      "Graphic Era University",
      "https://cdn.brandfetch.io/idprfJSwow/w/1000/h/1000/theme/dark/icon.jpeg?c=1bxid64Mup7aczewSAYMX&t=1781716306226",
    ],
    [
      "DIT University",
      "https://upload.wikimedia.org/wikipedia/commons/d/dd/DIT_University_Official_Logo.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail_unscaled&_=20140330154109",
    ],
    [
      "UPES",
      "https://images.seeklogo.com/logo-png/43/1/upes-university-of-petroleum-and-energy-studies-logo-png_seeklogo-432511.png",
    ],
    [
      "Galgotias University",
      "https://images.seeklogo.com/logo-png/38/1/galgotias-university-logo-png_seeklogo-389692.png",
    ],
    [
      "Manipal University Jaipur",
      "https://imgs.search.brave.com/HC2deGPPhQC9IoBohjNyshQlbYhsUEsn_MQNQCsvbGQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzBhLzRh/LzMxLzBhNGEzMTE5/YWQzYjQ5ZWFjMzlh/M2YzYzE2ZWRkYmJj/LmpwZw",
    ],
  ];

  int currentPage = 0;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      final page = _pageController.page?.round() ?? 0;
      if (page != currentPage) {
        currentPage = page;
        setState(() {});
      }
    });
  }

  void exploreViewAll(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ExploreUniversitiesViewAllScreen(),));
  }

  void eventsViewAll(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => EventsUpcomingViewAllScreen(),));
  }

  void campaignsViewAll(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => CampaignsViewScreen(),));
  }

  void programViewAll(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProgramViewAllScreen(),));
  }

  void studentSignup(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => StudentSignupScreen(),));
  }

  void athleteSignup(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => AthleteSignupScreen(),));
  }

  void joinTheNetwork(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => JoinTheNetworkAalumniScreen(),));
  }

  void getStartedUniversity(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => GetStartedUniversityScreen(),));
  }

  void login(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen(),));
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Image.asset("lib/assets/icons/img.png", height: 65.h),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ///Page 1
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.r,
                          left: 15.r,
                          right: 15.r,
                        ),
                        child: Container(
                          clipBehavior: .antiAlias,
                          height: 300.h,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 15.r,
                              bottom: 15.r,
                              left: 15.r,
                            ),
                            child: Row(
                              mainAxisAlignment: .spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    mainAxisAlignment: .spaceEvenly,
                                    children: [
                                      Text(
                                        "Connecting talent, opportunity & community"
                                            .toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.surface,
                                        ),
                                      ),
                                      Text(
                                        "Designed for alumni, athletes, student, and universities to collaborate, support, and grow together",
                                        style: TextStyle(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.surface,
                                        ),
                                      ),
                                      Container(
                                        height: 40.h,
                                        width: 210.w,
                                        decoration: BoxDecoration(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.surface,
                                          borderRadius: BorderRadius.circular(
                                            50.r,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: .center,
                                          children: [
                                            Icon(
                                              Icons.directions_run,
                                              size: 20.r,
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.secondary,
                                            ),
                                            Text(
                                              "Start Your Athlete journey",
                                              style: TextStyle(
                                                color: Theme.of(
                                                  context,
                                                ).colorScheme.secondary,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 15.r),
                                  child: Container(
                                    child: Stack(
                                      children: [
                                        CustomPaint(
                                          size: Size(150.w, 150.h),
                                          painter: Circles(
                                            40.r,
                                            Colors.lightBlueAccent.withValues(
                                              alpha: 0.5,
                                            ),
                                            Offset(40.w, 30.h),
                                          ),
                                        ),
                                        CustomPaint(
                                          size: Size(150.w, 150.h),
                                          painter: Circles(
                                            90.r,
                                            Colors.lightBlueAccent.withValues(
                                              alpha: 0.5,
                                            ),
                                            Offset(70.w, 90.h),
                                          ),
                                        ),
                                        CustomPaint(
                                          size: Size(150.w, 150.h),
                                          painter: Circles(
                                            110.r,
                                            Colors.lightBlueAccent.withValues(
                                              alpha: 0.5,
                                            ),
                                            Offset(120.w, 90.h),
                                          ),
                                        ),
                                        Image.asset(
                                          "lib/assets/icons/alumnis.png",
                                          height: 190.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      ///Page 2
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15.r,
                          left: 15.r,
                          right: 15.r,
                        ),
                        child: SizedBox(
                          height: 240.h,
                          child: Column(
                            crossAxisAlignment: .start,
                            mainAxisAlignment: .center,
                            children: [
                              Text(
                                "EXPLORE",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: .spaceBetween,
                                children: [
                                  Text(
                                    "Top Universities",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: exploreViewAll,
                                    icon: Text(
                                      "View All",
                                      style: TextStyle(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.secondary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: ListView.builder(
                                  scrollDirection: .horizontal,
                                  itemBuilder: (context, index) => Padding(
                                    padding: EdgeInsets.all(8.r),
                                    child: HomeScreenPart2Card(universityName: _universities[index][0], universityUri: _universities[index][1],),
                                  ),
                                  itemCount: _universities.length,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      ///Page 3
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.r,
                          left: 15.r,
                          right: 15.r,
                        ),
                        child: SizedBox(
                          height: 400.h,
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                "EVENTS",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: .spaceBetween,
                                children: [
                                  Text(
                                    "Upcoming",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: eventsViewAll,
                                    icon: Text(
                                      "View All",
                                      style: TextStyle(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.secondary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: ListView.builder(
                                  scrollDirection: .horizontal,
                                  itemBuilder: (context, index) => Padding(
                                    padding: EdgeInsets.only(right: 8.r),
                                    child: HomeScreenPart3Card(),
                                  ),
                                  itemCount: 5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      ///Page 4 heading
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15.r,
                          bottom: 15.r,
                          left: 15.r,
                          right: 15.r,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "BUILT FOR YOU",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: .spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 7.h,
                                      width: 7.w,
                                      child: Container(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.secondary,
                                      ),
                                    ),
                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width /
                                          6.5,
                                      child: Divider(
                                        height: 20.h,
                                        thickness: 1.h,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.secondary,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Your Platform, Your Future",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width /
                                          6.5,
                                      child: Divider(
                                        height: 20.h,
                                        thickness: 1.h,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.secondary,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 7.h,
                                      width: 7.w,
                                      child: Container(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.secondary,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      ///Page 4
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 15.r,
                          left: 15.r,
                          right: 15.r,
                        ),
                        child: SizedBox(
                          height: 250.h,
                          child: Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.r),
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.primary,
                                      ),
                                      width:
                                      MediaQuery.of(context).size.width /
                                          2.2,
                                      height: 250.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.r),
                                      child: CustomPaint(
                                        size: Size(
                                          MediaQuery.of(context).size.width /
                                              2.5,
                                          250.w,
                                        ),
                                        painter: ShapePainter(),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(15.r),
                                      child: SizedBox(
                                        height: 250.h,
                                        width:
                                        MediaQuery.of(context).size.width /
                                            2.8,
                                        child: Column(
                                          crossAxisAlignment: .start,
                                          mainAxisAlignment: .spaceEvenly,
                                          children: [
                                            Container(
                                              height: 50.h,
                                              width: 50.w,
                                              decoration: BoxDecoration(
                                                color: Colors.blue.withValues(
                                                  alpha: 0.3,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(12.r),
                                              ),
                                              child: Icon(
                                                Icons.person_sharp,
                                                color: Theme.of(
                                                  context,
                                                ).colorScheme.surface,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment: .start,
                                              children: [
                                                Text(
                                                  "STUDENT",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Theme.of(
                                                      context,
                                                    ).colorScheme.surface,
                                                    fontSize: 18.sp,
                                                  ),
                                                ),
                                                Text(
                                                  "Explore, Learn & Unlock Opportunities.",
                                                  style: TextStyle(
                                                    color: Theme.of(
                                                      context,
                                                    ).colorScheme.surface,
                                                  ),
                                                ),
                                              ],
                                            ),

                                            Container(
                                              height: 40.h,
                                              width: 90.w,
                                              decoration: BoxDecoration(
                                                color: Theme.of(
                                                  context,
                                                ).colorScheme.surface,
                                                borderRadius:
                                                BorderRadius.circular(50.r),
                                              ),
                                              child: IconButton(
                                                onPressed: studentSignup,
                                                icon: Row(
                                                  mainAxisAlignment:
                                                      .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      "Sign Up",
                                                      style: TextStyle(
                                                        fontSize: 12.sp,
                                                        color: Theme.of(
                                                          context,
                                                        ).colorScheme.secondary,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.arrow_forward,
                                                      size: 15.w,
                                                      color: Theme.of(
                                                        context,
                                                      ).colorScheme.secondary,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.r),
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.primary,
                                      ),
                                      width:
                                      MediaQuery.of(context).size.width /
                                          2.2,
                                      height: 250.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.r),
                                      child: CustomPaint(
                                        size: Size(
                                          MediaQuery.of(context).size.width /
                                              2.5,
                                          250.h,
                                        ),
                                        painter: ShapePainter(),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(15.r),
                                      child: SizedBox(
                                        height: 250.h,
                                        width:
                                        MediaQuery.of(context).size.width /
                                            2.8,
                                        child: Column(
                                          crossAxisAlignment: .start,
                                          mainAxisAlignment: .spaceEvenly,
                                          children: [
                                            Container(
                                              height: 50.h,
                                              width: 50.w,
                                              decoration: BoxDecoration(
                                                color: Colors.blue.withValues(
                                                  alpha: 0.3,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(12.r),
                                              ),
                                              child: Icon(
                                                Icons.directions_run,
                                                color: Theme.of(
                                                  context,
                                                ).colorScheme.surface,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment: .start,
                                              children: [
                                                Text(
                                                  "ATHLETE",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Theme.of(
                                                      context,
                                                    ).colorScheme.surface,
                                                    fontSize: 18.sp,
                                                  ),
                                                ),
                                                Text(
                                                  "Explore, Learn & Unlock Opportunities.",
                                                  style: TextStyle(
                                                    color: Theme.of(
                                                      context,
                                                    ).colorScheme.surface,
                                                  ),
                                                ),
                                              ],
                                            ),

                                            Container(
                                              height: 40.h,
                                              width: 90.w,
                                              decoration: BoxDecoration(
                                                color: Theme.of(
                                                  context,
                                                ).colorScheme.surface,
                                                borderRadius:
                                                BorderRadius.circular(50.r),
                                              ),
                                              child: IconButton(
                                                onPressed: athleteSignup,
                                                icon: Row(
                                                  mainAxisAlignment:
                                                      .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      "Sign Up",
                                                      style: TextStyle(
                                                        fontSize: 12.sp,
                                                        color: Theme.of(
                                                          context,
                                                        ).colorScheme.secondary,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.arrow_forward,
                                                      size: 15.r,
                                                      color: Theme.of(
                                                        context,
                                                      ).colorScheme.secondary,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      ///Page 5
                      Padding(
                        padding: EdgeInsets.only(left: 15.r, right: 15.r),
                        child: Container(
                          height: 250.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.r),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.r),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width:
                                          MediaQuery.of(
                                            context,
                                          ).size.width /
                                              2.9,
                                          height: 100.h,
                                        ),
                                        CustomPaint(
                                          size: Size(
                                            MediaQuery.of(context).size.width /
                                                2,
                                            100.h,
                                          ),
                                          painter: ShapePainter(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.r),
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    mainAxisAlignment: .spaceEvenly,
                                    children: [
                                      Container(
                                        width: 50.w,
                                        height: 50.h,
                                        clipBehavior: .antiAlias,
                                        decoration: BoxDecoration(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.surface,
                                          borderRadius: BorderRadius.circular(
                                            15.r,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.r),
                                          child: Image.asset(
                                            "lib/assets/icons/img_2.png",
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: .start,
                                        children: [
                                          Text("ALUMNI"),
                                          Text(
                                            "Stay Connected. Give Back. Create Impact",
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 40.h,
                                        width:
                                        MediaQuery.of(context).size.width /
                                            2.5,
                                        decoration: BoxDecoration(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.surface,
                                          borderRadius: BorderRadius.circular(
                                            15.r,
                                          ),
                                        ),
                                        child: IconButton(onPressed: joinTheNetwork, icon: Row(
                                          mainAxisAlignment: .spaceEvenly,
                                          children: [
                                            Text(
                                              "Join the Network",
                                              style: TextStyle(
                                                color: Theme.of(
                                                  context,
                                                ).colorScheme.secondary,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              size: 20.r,
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.secondary,
                                            ),
                                          ],
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      ///Page 6
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15.r,
                          right: 15.r,
                          left: 15.r,
                          bottom: 15.r,
                        ),
                        child: Container(
                          height: 250.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(color: Colors.red, width: 2),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.r),
                            child: Column(
                              crossAxisAlignment: .start,
                              mainAxisAlignment: .spaceBetween,
                              children: [
                                Container(
                                  width: 60.w,
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: Colors.red,
                                  ),
                                  child: Image.asset("lib/assets/icons/img_3.png"),
                                ),
                                Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: 3.r,
                                      ),
                                      child: Text(
                                        "UNIVERSITY",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.sp,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Manage Talent. Maximize Impact. Drive Growth",
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 40.h,
                                  width:
                                  MediaQuery.of(context).size.width / 3.4,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(25.r),
                                  ),
                                  child: IconButton(onPressed: getStartedUniversity, icon: Row(
                                    crossAxisAlignment: .center,
                                    mainAxisAlignment: .spaceEvenly,
                                    children: [
                                      Text(
                                        "Get Started",
                                        style: TextStyle(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.surface,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.surface,
                                        size: 17.r,
                                      ),
                                    ],
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      ///Page 7
                      Container(
                        color: Theme.of(context).colorScheme.secondary,
                        height: 400.h,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.r, right: 15.r),
                          child: Column(
                            mainAxisAlignment: .spaceEvenly,
                            children: [
                              Text(
                                "ALL-IN-ONE",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                              ),
                              Text(
                                "Secure Your Athlete Future",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.surface,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  border: Border.all(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.surface,
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: .center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 15.r,
                                      ),
                                      child: Container(
                                        width: 40.w,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.surface,
                                          borderRadius: BorderRadius.circular(
                                            12.r,
                                          ),
                                        ),
                                        child: Icon(Icons.directions_run),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 15.r,
                                      ),
                                      child: Column(
                                        mainAxisAlignment: .center,
                                        crossAxisAlignment: .start,
                                        children: [
                                          Text("Build Your Athlete Profile"),
                                          Text(
                                            "Create your digital athlete identity.",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  border: Border.all(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.surface,
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: .center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 15.r,
                                      ),
                                      child: Container(
                                        width: 40.w,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.surface,
                                          borderRadius: BorderRadius.circular(
                                            12.r,
                                          ),
                                        ),
                                        child: Image.asset(
                                          "lib/assets/icons/live-fill.png",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 15.r,
                                      ),
                                      child: Column(
                                        mainAxisAlignment: .center,
                                        crossAxisAlignment: .start,
                                        children: [
                                          Text("Build Your Athlete Profile"),
                                          Text(
                                            "Create your digital athlete identity.",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  border: Border.all(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.surface,
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: .center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 15.r,
                                      ),
                                      child: Container(
                                        width: 40.w,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.surface,
                                          borderRadius: BorderRadius.circular(
                                            12.r,
                                          ),
                                        ),
                                        child: Image.asset(
                                          "lib/assets/icons/award-fill.png",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 15.r,
                                      ),
                                      child: Column(
                                        mainAxisAlignment: .center,
                                        crossAxisAlignment: .start,
                                        children: [
                                          Text("Build Your Athlete Profile"),
                                          Text(
                                            "Create your digital athlete identity.",
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
                      ),

                      ///Page 8 heading
                      SizedBox(
                        height: 100.h,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 15.r),
                              child: Text(
                                "EDUCATION & SPORTS COMMUNITIES",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 15.r,
                                left: 15.r,
                                right: 15.r,
                                top: 8.r,
                              ),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment: .spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 10.w,
                                          height: 10.h,
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.secondary,
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                          width: 88.w,
                                          child: Divider(
                                            thickness: 2.w,
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.secondary,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Business of Empowering",
                                      style: TextStyle(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.secondary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 20.h,
                                          width: 88.w,
                                          child: Divider(
                                            thickness: 2.w,
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.secondary,
                                          ),
                                        ),
                                        Container(
                                          width: 10.w,
                                          height: 10.h,
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.secondary,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      ///Page 8
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 15.r,
                          left: 15.r,
                          right: 15.r,
                        ),
                        child: Container(
                          height: 130.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).colorScheme.primary,
                                blurStyle: BlurStyle.outer,
                                blurRadius: 10.r,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.r),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: .center,
                                    mainAxisAlignment: .center,
                                    children: [
                                      Text(
                                        "150+",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19.sp,
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.secondary,
                                        ),
                                      ),
                                      Text(
                                        "Universities under one umbrella",
                                        textAlign: .center,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: .center,
                                    mainAxisAlignment: .center,
                                    children: [
                                      Text(
                                        "82%",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19.sp,
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.secondary,
                                        ),
                                      ),
                                      Text(
                                        "Athletes showcase talent effectively",
                                        textAlign: .center,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: .center,
                                    mainAxisAlignment: .center,
                                    children: [
                                      Text(
                                        "87%",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19.sp,
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.secondary,
                                        ),
                                      ),
                                      Text(
                                        "Alumni feel more connected",
                                        textAlign: .center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      ///Page 9
                      Container(
                        color: Colors.grey.withValues(alpha: 0.2),
                        height: 500.h,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.all(15.r),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    "CAMPAIGNS",
                                    style: TextStyle(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.secondary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: .spaceBetween,
                                    children: [
                                      Text(
                                        "Trending Campaigns",
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: campaignsViewAll,
                                        icon: Text(
                                          "View All",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.secondary,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Expanded(
                                child: PageView.builder(
                                  controller: _pageController,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        top: 8.r,
                                        bottom: 8.r,
                                        right: 15.r,
                                      ),
                                      child: HomeScreenPart9Card(),
                                    );
                                  },
                                  itemCount: 5,
                                ),
                              ),

                              Row(
                                mainAxisAlignment: .center,
                                children: List.generate(5, (index) {
                                  return AnimatedContainer(
                                    duration: Duration(milliseconds: 250),
                                    height: 8.h,
                                    margin: EdgeInsets.symmetric(horizontal: 4.r),
                                    width: currentPage == index ? 24.w : 8.w,
                                    decoration: BoxDecoration(
                                      color: currentPage == index
                                          ? Colors.blue
                                          : Colors.lightBlue.shade200,
                                      borderRadius: BorderRadius.circular(15.r),
                                    ),
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),
                      ),

                      ///page 10
                      Padding(
                        padding: EdgeInsets.all(15.r),
                        child: SizedBox(
                          height: 500.h,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text("PROGRAM", style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.bold),),
                              Row(
                                mainAxisAlignment: .spaceBetween,
                                children: [
                                  Text("Best Program For You", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),),
                                  IconButton(
                                    onPressed: programViewAll,
                                    icon: Text(
                                      "View All",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.secondary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(child: ListView.builder(
                                scrollDirection: .horizontal,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.only(right: 8.r),
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 8.r, bottom: 8.r,),
                                    child: HomePagePart10Card(),
                                  ),
                                ),itemCount: 5,)),
                            ],
                          ),
                        ),
                      ),

                      ///footer
                      Container(
                        color: Theme.of(context).colorScheme.secondary,
                        height: 180.h,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.all(8.r),
                          child: Column(
                            mainAxisAlignment: .spaceEvenly,
                            crossAxisAlignment: .center,
                            children: [
                              Text("Ready to get started?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp, color: Theme.of(context).colorScheme.surface),),
                              Text("Join thousands of students, athletes & alumni across India", style: TextStyle(color: Theme.of(context).colorScheme.surface),),
                              Row(
                                mainAxisAlignment: .spaceEvenly,
                                children: [
                                  ElevatedButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => AthleteSignupScreen(),));
                                  }, child: Text("Athlete Signup", style: TextStyle(fontSize: 14.sp
                                  ),), ),
                                  ElevatedButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => StudentSignupScreen(),));
                                  }, child: Text("Student Signup", style: TextStyle(fontSize: 14.sp
                                  ),), ),
                                  ElevatedButton(onPressed: (){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInScreen(),));
                                  }, child: Text("Login", style: TextStyle(fontSize: 14.sp
                                  ),), ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




