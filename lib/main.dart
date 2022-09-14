// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'profile.dart';
import 'course.dart';

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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "courses",
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
        body: GridView(
          shrinkWrap: true,
          // ignore: sort_child_properties_last
          children: courses
              .map((course) =>
                  CourseDet(course.title, course.trainer, course.description))
              .toList(),
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 220),
        ));
    //Column
  }
}
