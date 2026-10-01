import 'package:alumni/features/home/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _pageController = PageController(viewportFraction: 0.88);

  int _currentPage = 0;

  final SnackBar _snackBar = SnackBar(
    content: const Text("Coming Soon.."),
    backgroundColor: Colors.indigo.withValues(alpha: 0.8),
  );

  final List<Widget> _pages = [
    const HomeScreen(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];

  void _showComingSoon() {
    ScaffoldMessenger.of(context).showSnackBar(_snackBar);
  }

  void _changePage(int index) {
    if (index == 0) {
      setState(() => _currentPage = 0);
    } else {
      _showComingSoon();
    }
  }

  @override
  Widget build(BuildContext context) {
    print("Page: $_currentPage");
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 18,
        child: Padding(
          padding: EdgeInsets.only(right: 23.r, left: 23.r),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .start,
            children: [
              IconButton(
                onPressed: () => _changePage(0),
                icon: const Icon(Icons.home_filled),
              ),
              IconButton(
                onPressed: () => _changePage(1),
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () => _changePage(2),
                icon: const Icon(Icons.screen_lock_portrait_rounded),
              ),
              IconButton(
                onPressed: () => _changePage(3),
                icon: const Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () => _changePage(4),
                icon: CircleAvatar(
                  radius: 15.r,
                  backgroundColor: Colors.lightBlueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
