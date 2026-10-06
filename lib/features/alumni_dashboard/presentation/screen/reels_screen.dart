import 'package:expandable_text/expandable_text.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:video_player/video_player.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({super.key});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  final PageController _pageController = PageController();

  final List<String> _videos = [
    'lib/assets/video/goldMedalOlympicGames.mp4',
    'lib/assets/video/IconicYusufOlympicGames.mp4',
  ];

  final List<FlickManager> _flickManagers = [];
  final List<VideoPlayerController> _videoControllers = [];

  int _currentIndex = 0;

  bool _isLoading = true;

  final List<bool> _isLiked = [
    false,
    false,
  ];

  @override
  void initState() {
    super.initState();

    _initializeVideos();
  }

  Future<void> _initializeVideos() async {
    for (final video in _videos) {
      final controller = VideoPlayerController.asset(video);

      await controller.initialize();

      controller.setLooping(true);

      final flickManager = FlickManager(
        videoPlayerController: controller,
        autoPlay: false,
      );

      _videoControllers.add(controller);
      _flickManagers.add(flickManager);
    }

    if (!mounted) return;

    setState(() {
      _isLoading = false;
    });

    _flickManagers.first.flickControlManager?.play();
  }

  void _onPageChanged(int index) {
    if (_flickManagers.isNotEmpty) {
      _flickManagers[_currentIndex]
          .flickControlManager
          ?.pause();
    }

    setState(() {
      _currentIndex = index;
    });

    _flickManagers[index]
        .flickControlManager
        ?.play();
  }


  void _toggleLike(int index) {
    setState(() {
      _isLiked[index] = !_isLiked[index];
    });
  }

  @override
  void dispose() {
    _pageController.dispose();

    for (final manager in _flickManagers) {
      manager.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return PageView.builder(
      controller: _pageController,

      scrollDirection: Axis.vertical,

      itemCount: _videos.length,

      onPageChanged: _onPageChanged,

      itemBuilder: (context, index) {
        return _buildReel(index);
      },
    );
  }

  Widget _buildReel(int index) {
    final flickManager = _flickManagers[index];

    final controller = _videoControllers[index];

    return Stack(
      fit: StackFit.expand,
      children: [

        Positioned.fill(
          child: FlickVideoPlayer(
            flickManager: flickManager,

            flickVideoWithControls:
            const FlickVideoWithControls(
              controls: FlickPortraitControls(),
            ),
          ),
        ),

        Positioned.fill(
          child: IgnorePointer(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,

                  colors: [
                    Colors.black.withValues(alpha: 0.15),
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.75),
                  ],

                  stops:[
                    0.0,
                    0.45,
                    1.0,
                  ],
                ),
              ),
            ),
          ),
        ),

        Positioned(
          top: 10.h,
          right: 10.w,

          child: IconButton(
            onPressed: () {},

            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30.r,
            ),
          ),
        ),

        Positioned(
          right: 15.w,
          bottom: 135.h,

          child: Column(
            children: [

              GestureDetector(
                onTap: () => _toggleLike(index),

                child: Column(
                  children: [

                    Icon(
                      _isLiked[index]
                          ? Icons.thumb_up
                          : Icons.thumb_up_alt_outlined,

                      color: _isLiked[index]
                          ? Theme.of(context).colorScheme.secondary
                          : Colors.white,

                      size: 38.r,
                    ),

                    SizedBox(height: 5.h),

                    Text(
                      '4.5k',

                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),


        Positioned(
          left: 20.w,
          right: 70.w,
          bottom: 10.h,

          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,

            children: [

              Row(
                children: [
                  Row(
                    children: [

                      CircleAvatar(
                        radius: 24.r,

                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1718209881014-83732ea8376d?q=80&w=1480&auto=format&fit=crop',
                        ),
                      ),

                      SizedBox(width: 10.w),

                      Column(
                        children: [
                          Text(
                            'Amit Gangwar',

                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("◍ 20 mins ago ", style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.5),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),)
                        ],
                      ),

                    ],
                  ),


                ],
              ),

              SizedBox(height: 12.h),

              Text(
                index == 0
                    ? 'My First Match'
                    : 'Olympic Memories',

                style:TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 6.h),

              ExpandableText(
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem sed aliquam reiciendis quos explicabo, necessitatibus as",
                style: TextStyle(color: Theme.of(context).colorScheme.surface),
                maxLines: 2,
                expandText: 'Read More',
                collapseText: 'Read Less',
                linkColor: Theme.of(context).colorScheme.surface,
                linkStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 5.h),


              Padding(
                padding: EdgeInsets.only(right:8.r, left: 8.r, bottom: 35.r, top: 8.r),
                child: ValueListenableBuilder<VideoPlayerValue>(
                  valueListenable: controller,

                  builder: (
                      context,
                      value,
                      child,
                      ) {
                    if (!value.isInitialized) {
                      return const SizedBox();
                    }

                    final duration =
                    value.duration.inMilliseconds
                        .toDouble();

                    final position =
                    value.position.inMilliseconds
                        .toDouble();

                    final progress =
                    duration == 0
                        ? 0.0
                        : position / duration;

                    return SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 6.h,

                        thumbShape:
                        RoundSliderThumbShape(
                          enabledThumbRadius: 6.r,
                        ),

                        overlayShape:
                        SliderComponentShape.noOverlay,
                      ),

                      child: Slider(
                        value: progress.clamp(
                          0.0,
                          1.0,
                        ),

                        min: 0,
                        max: 1,

                        activeColor: Colors.white,

                        inactiveColor:
                        Colors.white.withValues(
                          alpha: 0.4,
                        ),

                        onChanged: (value) {

                          final newPosition =
                              duration * value;

                          controller.seekTo(
                            Duration(
                              milliseconds:
                              newPosition.toInt(),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}