// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project/course.dart';
import 'package:project/profile.dart';

void main() {
  runApp(const MyApp());
}

var courses = [
  Course("flutter", "unknown",
      "In anim nulla magna magna culpa dolor cillum est. Est cillum ad ad aliquip sunt consectetur ea esse. Occaecat Lorem consequat ipsum aliquip excepteur sunt exercitation duis excepteur est commodo labore anim velit. Nisi incididunt aliqua dolor do. Culpa eiusmod dolore pariatur eu veniam irure eu."),
  Course("flutter", "unknown",
      "In anim nulla magna magna culpa dolor cillum est. Est cillum ad ad aliquip sunt consectetur ea esse. Occaecat Lorem consequat ipsum aliquip excepteur sunt exercitation duis excepteur est commodo labore anim velit. Nisi incididunt aliqua dolor do. Culpa eiusmod dolore pariatur eu veniam irure eu."),
  Course("flutter", "unknown",
      "In anim nulla magna magna culpa dolor cillum est. Est cillum ad ad aliquip sunt consectetur ea esse. Occaecat Lorem consequat ipsum aliquip excepteur sunt exercitation duis excepteur est commodo labore anim velit. Nisi incididunt aliqua dolor do. Culpa eiusmod dolore pariatur eu veniam irure eu."),
  Course("flutter", "unknown",
      "In anim nulla magna magna culpa dolor cillum est. Est cillum ad ad aliquip sunt consectetur ea esse. Occaecat Lorem consequat ipsum aliquip excepteur sunt exercitation duis excepteur est commodo labore anim velit. Nisi incididunt aliqua dolor do. Culpa eiusmod dolore pariatur eu veniam irure eu."),
  Course("flutter", "unknown",
      "In anim nulla magna magna culpa dolor cillum est. Est cillum ad ad aliquip sunt consectetur ea esse. Occaecat Lorem consequat ipsum aliquip excepteur sunt exercitation duis excepteur est commodo labore anim velit. Nisi incididunt aliqua dolor do. Culpa eiusmod dolore pariatur eu veniam irure eu."),
  Course("flutter", "unknown",
      "In anim nulla magna magna culpa dolor cillum est. Est cillum ad ad aliquip sunt consectetur ea esse. Occaecat Lorem consequat ipsum aliquip excepteur sunt exercitation duis excepteur est commodo labore anim velit. Nisi incididunt aliqua dolor do. Culpa eiusmod dolore pariatur eu veniam irure eu."),
  Course("flutter", "unknown",
      "In anim nulla magna magna culpa dolor cillum est. Est cillum ad ad aliquip sunt consectetur ea esse. Occaecat Lorem consequat ipsum aliquip excepteur sunt exercitation duis excepteur est commodo labore anim velit. Nisi incididunt aliqua dolor do. Culpa eiusmod dolore pariatur eu veniam irure eu."),
  Course("flutter", "unknown",
      "In anim nulla magna magna culpa dolor cillum est. Est cillum ad ad aliquip sunt consectetur ea esse. Occaecat Lorem consequat ipsum aliquip excepteur sunt exercitation duis excepteur est commodo labore anim velit. Nisi incididunt aliqua dolor do. Culpa eiusmod dolore pariatur eu veniam irure eu."),
];

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
  List<Widget> _pages = [
    Scaffold(
      appBar: AppBar(
        title: Text("courses"),
      ),
      body: GridView(
        shrinkWrap: true,
        // ignore: sort_child_properties_last
        children: courses
            .map((course) =>
                CourseDet(course.title, course.trainer, course.description))
            .toList(),
        gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 220),
      ),
    ),
    Scaffold(
        appBar: AppBar(
          title: Text("courses"),
        ),
        body: TabBarView(
          children: <Widget>[],
        )),
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
          appBar: AppBar(
            title: const Text(
              "main screen",
              style: TextStyle(fontSize: 25),
            ),
          ),
          drawer: Drawer(
            child: SafeArea(
              child: ListView(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 150,
                        child: Image.asset("assets/img/logo.png"),
                      ),
                      SizedBox(
                        width: 200,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilePage()));
                          },
                          icon: const Icon(Icons.account_circle_outlined),
                          label: const Text("Profile"),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          body: _pages[_selectedPageIndex],
          bottomNavigationBar: BottomNavigationBar(onTap: _x1, items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_tree_sharp), label: "courses"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_tree_sharp), label: "instructors")
          ]),
        ));
    //Column
  }
}
