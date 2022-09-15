// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/pages.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';

void main() {
  runApp(const MyApp());
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.landscapeLeft,
  //   DeviceOrientation.landscapeRight,
  //   DeviceOrientation.portraitDown,
  //   DeviceOrientation.portraitUp
  // ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: prefer_final_fields
  List<Widget> _pages = [CoursesPage(), InstructorPage(), ProfilePage()];

  PageController _pageController = PageController();
  int selectedpage = 0;

  void _x1(int index) {
    setState(() {
      selectedpage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildPageView(),
          ],
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [buildBottNavigation()],
          ),
        )
      ]),
    );
  }

  Widget buildPageView() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.909,
      child: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: _x1,
          children: [CoursesPage(), InstructorPage(), ProfilePage()],
        ),
      ),
    );
  }

  Widget buildBottNavigation() {
    return CircleNavBar(
      activeIcons: [
        Icon(
          Icons.play_circle_fill,
          color: Color.fromARGB(255, 248, 168, 94),
        ),
        Icon(Icons.supervised_user_circle_rounded,
            color: Color.fromARGB(255, 248, 168, 94)),
        Icon(Icons.account_circle_rounded,
            color: Color.fromARGB(255, 248, 168, 94))
      ],
      inactiveIcons: [Text("Courses"), Text("instructors"), Text("Profile")],
      color: Color.fromARGB(255, 252, 252, 252),
      height: MediaQuery.of(context).size.height * 0.08863,
      circleWidth: 60,
      initIndex: 0,
      onChanged: (int index) {
        _pageController.animateToPage(index,
            duration: Duration(microseconds: 1000), curve: Curves.easeIn);
      },
      padding: EdgeInsets.only(bottom: 2),
      cornerRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24)),
      shadowColor: Color.fromARGB(255, 155, 155, 154),
      elevation: 10,
    );
  }
}
