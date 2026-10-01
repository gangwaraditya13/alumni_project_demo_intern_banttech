import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeScreenAfterLogin extends StatefulWidget {
  const HomeScreenAfterLogin({super.key});

  @override
  State<HomeScreenAfterLogin> createState() => _HomeScreenAfterLoginState();
}

class _HomeScreenAfterLoginState extends State<HomeScreenAfterLogin> {
  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    super.initState();

    final videoId = YoutubePlayerController.convertUrlToId(
      'https://youtu.be/WHp2zGOh5ck',
    );

    if (videoId == null) {
      throw Exception('Invalid YouTube URL');
    }

    _youtubePlayerController = YoutubePlayerController.fromVideoId(
      videoId: videoId,
      autoPlay: false,
    );
  }

  @override
  void dispose() {
    _youtubePlayerController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 15.r,
                right: 15.r,
                top: 8.r,
                bottom: 15.r,
              ),
              child: Text(
                "Athletes Reels",
                style: TextStyle(fontSize: 21.sp, fontWeight: FontWeight.bold),
              ),
            ),
            ///page 1
            Container(
              height: 250.h,
              child: ListView.builder(
                scrollDirection: .horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: 15.r),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: 250.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          clipBehavior: .antiAlias,
                          child: Image.network(
                            "https://images.unsplash.com/photo-1608245449230-4ac19066d2d0?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                            fit: .cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.r),
                          child: Column(
                            crossAxisAlignment: .start,
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.surface,
                                  borderRadius: BorderRadius.circular(50.r),
                                  border: BoxBorder.all(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.secondary,
                                    width: 3.w,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(2.r),
                                  child: CircleAvatar(
                                    foregroundImage: NetworkImage(
                                      "https://images.unsplash.com/photo-1718209881014-83732ea8376d?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    ),
                                    radius: 18.r,
                                  ),
                                ),
                              ),
                              Text(
                                "Arjun Khanna",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                itemCount: 5,
              ),
            ),
            ///page 2
            Padding(
              padding: EdgeInsets.only(top: 15..r, bottom: 15.r),
              child: Container(
                height: 450.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.9),
                      blurStyle: .outer,
                      spreadRadius: 1.r,
                      blurRadius: 15.r,
                    ),
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.9),
                      blurStyle: .outer,
                      spreadRadius: 1.r,
                      blurRadius: 15.r,
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(top:8.r, bottom: 8.r, left: 15.r, right: 15.r),
                  child: Column(
                    crossAxisAlignment: .start,
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.surface,
                                  borderRadius: BorderRadius.circular(50.r),
                                  border: BoxBorder.all(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.secondary,
                                    width: 3.w,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(2.r),
                                  child: CircleAvatar(
                                    foregroundImage: NetworkImage(
                                      "https://images.unsplash.com/photo-1718209881014-83732ea8376d?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    ),
                                    radius: 18.r,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.r),
                                child: Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Text(
                                      "Sayed Faizy",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    Text("◍ April 2 at 11:08 PM"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.r, top: 8.r),
                            child: Text(
                              "My First Match",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          ExpandableText(
                            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem sed aliquam reiciendis quos explicabo, necessitatibus consequatur. Lorem ipsum dolor sit amet consectetur adipisicing elit.",
                            maxLines: 2,
                            expandText: 'Read More',
                            collapseText: 'Read Less',
                            linkColor: Colors.black,
                            linkStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: YoutubePlayer(
                          controller: _youtubePlayerController,
                          aspectRatio: 16 / 9,
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset("lib/assets/icons/img_5.png", height: 20.h),
                          Text("20"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ///page 3
            Padding(
              padding: EdgeInsets.only(top: 10.r, bottom: 10.r),
              child: Container(
                height: 260.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.9),
                      blurStyle: .outer,
                      spreadRadius: 1.r,
                      blurRadius: 15.r,
                    ),
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.9),
                      blurStyle: .outer,
                      spreadRadius: 1.r,
                      blurRadius: 15.r,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.r, right: 15.r, top: 8.r),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 8.r),
                            child: Icon(
                              Icons.people_alt,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          Text("Athletes You Must Watch"),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: .horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(
                              top: 8.r,
                              bottom: 15.r,
                              left: 15.r,
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.secondary,
                                    blurStyle: .outer,
                                    spreadRadius: 1.r,
                                    blurRadius: 2.r,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                      height: 130.h,
                                      width: MediaQuery.of(context).size.width / 2.7,
                                      clipBehavior: .antiAlias,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.r), topRight: Radius.circular(15.r))
                                      ),
                                      child: Image.network("https://media.istockphoto.com/id/1973980475/photo/young-female-in-sportswear-running-in-a-park-stock-photo.jpg?s=2048x2048&w=is&k=20&c=ao5LY_CEcj6SYKZg2JaS4r6MkZPG3mhobylzTYRpE6s=",fit: .cover,)
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.r),
                                    child: Column(
                                      children: [
                                        Text("Nadeem Ansari", style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),),
                                        Text("Athlete",style: TextStyle(fontWeight: FontWeight.w300),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          itemCount: 5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ///page 4
            Padding(
              padding: EdgeInsets.only(top: 15.r, bottom: 15.r),
              child: Container(
                height: 520.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.9),
                      blurStyle: .outer,
                      spreadRadius: 1.r,
                      blurRadius: 15.r,
                    ),
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.9),
                      blurStyle: .outer,
                      spreadRadius: 1.r,
                      blurRadius: 15.r,
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(top:8.r, bottom: 8.r, left: 15.r, right: 15.r),
                  child: Column(
                    crossAxisAlignment: .start,
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.surface,
                                  borderRadius: BorderRadius.circular(50.r),
                                  border: BoxBorder.all(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.secondary,
                                    width: 3.w,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(2.r),
                                  child: CircleAvatar(
                                    foregroundImage: NetworkImage(
                                      "https://images.unsplash.com/photo-1718209881014-83732ea8376d?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    ),
                                    radius: 18.r,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.r),
                                child: Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Text(
                                      "Sayed Faizy",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    Text("◍ April 2 at 11:08 PM"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.r, top: 8.r),
                            child: Text(
                              "My First Match",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          ExpandableText(
                            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem sed aliquam reiciendis quos explicabo, necessitatibus consequatur. Lorem ipsum dolor sit amet consectetur adipisicing elit.",
                            maxLines: 2,
                            expandText: 'Read More',
                            collapseText: 'Read Less',
                            linkColor: Colors.black,
                            linkStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.network("https://media.istockphoto.com/id/1803488913/photo/playing-tennis-outdoors-at-night.jpg?s=2048x2048&w=is&k=20&c=6CQjo3EJYyQKIaARUF9Xpqov_gbJj77ofSIi6xDBpF0="),
                      ),
                      Row(
                        children: [
                          Image.asset("lib/assets/icons/img_5.png", height: 20.h),
                          Text("20"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ///page 5
            Container(
              height: 300.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.9),
                    blurStyle: .outer,
                    spreadRadius: 1.r,
                    blurRadius: 15.r,
                  ),
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.9),
                    blurStyle: .outer,
                    spreadRadius: 1.r,
                    blurRadius: 15.r,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 8.r, bottom: 8.r),
                child: Column(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.r, right: 15.r),
                      child: Row(
                        children: [
                          Image.asset("lib/assets/icons/live-fill.png", color: Theme.of(context).colorScheme.secondary,),
                          Padding(
                            padding: EdgeInsets.only(left: 8.r),
                            child: Text(
                              "Reels",
                              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 250.h,
                      child: ListView.builder(
                        scrollDirection: .horizontal,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(left: 15.r),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: Stack(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height: 250.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                  ),
                                  clipBehavior: .antiAlias,
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1608245449230-4ac19066d2d0?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    fit: .cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.r),
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    mainAxisAlignment: .end,
                                    children: [
                                      Text(
                                        "Arjun Khanna",
                                        style: TextStyle(
                                          color: Theme.of(context).colorScheme.surface,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        itemCount: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ///page 6
            Padding(
              padding: EdgeInsets.only(top: 15.r, bottom: 15.r),
              child: Container(
                height: 450.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.9),
                      blurStyle: .outer,
                      spreadRadius: 1.r,
                      blurRadius: 15.r,
                    ),
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.9),
                      blurStyle: .outer,
                      spreadRadius: 1.r,
                      blurRadius: 15.r,
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(top:8.r, bottom: 8.r, left: 15.r, right: 15.r),
                  child: Column(
                    crossAxisAlignment: .start,
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.surface,
                                  borderRadius: BorderRadius.circular(50),
                                  border: BoxBorder.all(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.secondary,
                                    width: 3.w,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(2.r),
                                  child: CircleAvatar(
                                    foregroundImage: NetworkImage(
                                      "https://images.unsplash.com/photo-1718209881014-83732ea8376d?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    ),
                                    radius: 18.r,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.r),
                                child: Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Text(
                                      "Sayed Faizy",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    Text("◍ April 2 at 11:08 PM"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.r, top: 8.r),
                            child: Text(
                              "My First Match",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          ExpandableText(
                            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem sed aliquam reiciendis quos explicabo, necessitatibus consequatur. Lorem ipsum dolor sit amet consectetur adipisicing elit.",
                            maxLines: 2,
                            expandText: 'Read More',
                            collapseText: 'Read Less',
                            linkColor: Colors.black,
                            linkStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.network("https://media.istockphoto.com/id/1803488913/photo/playing-tennis-outdoors-at-night.jpg?s=2048x2048&w=is&k=20&c=6CQjo3EJYyQKIaARUF9Xpqov_gbJj77ofSIi6xDBpF0="),
                      ),
                      Row(
                        children: [
                          Image.asset("lib/assets/icons/img_5.png", height: 20.h),
                          Text("20"),
                        ],
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
