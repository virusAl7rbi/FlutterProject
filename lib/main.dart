// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project/course.dart';
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
  List<Widget> _pages = [
    CoursesPage(),
    InstructorPage(),
    ProfilePage()
  ];

  int _selectedPageIndex = 0;

  void _x1(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 0,
        child: Scaffold(
          body: _pages[_selectedPageIndex],
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.blue,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
              currentIndex: _selectedPageIndex,
              onTap: _x1,
              // ignore: prefer_const_literals_to_create_immutables
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
              ]),
        ));
    //Column
  }
}
