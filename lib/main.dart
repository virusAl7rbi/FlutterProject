// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/pages.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(const MyApp());
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

  final _pageController = PageController();
  int selectedpage = 0;

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
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [buildBottNavigation()],
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
          onPageChanged: (index) {
            setState(() {
              selectedpage = index;
            });
          },
          // physics: NeverScrollableScrollPhysics(),
          children: [CoursesPage(), InstructorPage(), ProfilePage()],
        ),
      ),
    );
  }

  Widget buildBottNavigation() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
      child: GNav(
          selectedIndex: selectedpage,
          onTabChange: (index) {
            setState(() {
              selectedpage = index;
              _pageController.animateToPage(index,
                  duration: Duration(microseconds: 1000), curve: Curves.easeIn);
            });
          },
          activeColor: Color.fromARGB(255, 248, 168, 94),
          tabBorderRadius: 30,
          tabActiveBorder: Border.all(
              color: Color.fromARGB(255, 248, 168, 94),
              width: 0), // tab button border
          curve: Curves.easeOutExpo, // tab animation curves
          duration: Duration(seconds: 1), // tab animation duration
          gap: 5, // the tab button gap between icon and text
          iconSize: 32, // tab button icon size
          padding: EdgeInsets.symmetric(
              horizontal: 25, vertical: 5), // navigation bar padding
          tabs: [
            GButton(
              icon: Icons.play_arrow_outlined,
              text: 'Courses',
            ),
            GButton(
              icon: Icons.supervisor_account_outlined,
              text: 'Instructors',
            ),
            GButton(
              icon: Icons.account_circle_outlined,
              text: 'Profile',
            )
          ]),
    );
    // return CircleNavBar(
    //   activeIcons: [
    //     Icon(
    //       Icons.play_circle_fill,
    //       color: Color.fromARGB(255, 248, 168, 94),
    //     ),
    //     Icon(Icons.supervised_user_circle_rounded,
    //         color: Color.fromARGB(255, 248, 168, 94)),
    //     Icon(Icons.account_circle_rounded,
    //         color: Color.fromARGB(255, 248, 168, 94))
    //   ],
    //   inactiveIcons: [Text("Courses"), Text("instructors"), Text("Profile")],
    //   color: Color.fromARGB(255, 252, 252, 252),
    //   height: MediaQuery.of(context).size.height * 0.091,
    //   circleWidth: 60,
    //   initIndex: selectedpage,
    //   onChanged: (int index) {
    //     setState(() {
    //       selectedpage = index;
    //       _pageController.animateToPage(index,
    //           duration: Duration(microseconds: 1000), curve: Curves.easeIn);
    //     });
    //   },
    //   cornerRadius: BorderRadius.only(
    //       topLeft: Radius.circular(8),
    //       topRight: Radius.circular(8),
    //       bottomLeft: Radius.circular(24),
    //       bottomRight: Radius.circular(24)),
    //   shadowColor: Color.fromARGB(255, 155, 155, 154),
    //   elevation: 10,
    // );
  }
}
