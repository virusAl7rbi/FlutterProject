// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/pages.dart';

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
  List<Widget> _pages = [CoursesPage(), InstructorPage(), ProfilePage()];

  PageController _pageController = PageController();
  int selectedpage = 0;

  void _x1(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [buildPageView(), buildBottNavigation()]),
    );
  }

  Widget buildPageView() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.918,
      child: PageView(
        controller: _pageController,
        children: [CoursesPage(), InstructorPage(), ProfilePage()],
        onPageChanged: (index) {
          setState(() {
            selectedpage = index;
          });
        },
      ),
    );
  }

  Widget buildBottNavigation() {
    return BottomNavigationBar(
        currentIndex: selectedpage,
        onTap: (int index) {
          _pageController.animateToPage(index,
              duration: Duration(microseconds: 1000), curve: Curves.easeIn);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_fill), label: "courses"),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_rounded),
              label: "instructors"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
              ),
              label: "Profile")
        ]);
  }
}

onPageChange(int index) {}
