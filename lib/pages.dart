import 'package:flutter/material.dart';

import 'package:project/course.dart';

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

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("courses"),
      ),
      body: GridView(
        shrinkWrap: true,
        // ignore: sort_child_properties_last
        children: courses
            .map((course) => CourseDet(
                  title: course.title,
                  trainer: course.trainer,
                  description: course.description,
                ))
            .toList(),

        gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 220),
      ),
    );
  }
}

class InstructorPage extends StatelessWidget {
  const InstructorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("instructors"),
        ),
        body: TabBarView(
          children: <Widget>[],
        ));
  }
}



class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            height: 100,
            width: 50,
            child: Image.asset(
              'assets/img/logo.png',
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Container(
              width: MediaQuery.of(context).size.height,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7, // blur radius
                      offset: const Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text("Name: \n",
                              style: TextStyle(fontSize: 20)),
                          const Text("Fahd Alharbi\n",
                              style: TextStyle(fontSize: 20)),
                        ],
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text("finished courses: \n",
                              style: TextStyle(fontSize: 20)),
                          const Text("Flutter\n",
                              style: TextStyle(fontSize: 20)),
                        ],
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text("language: \n ",
                              style: TextStyle(fontSize: 20)),
                          const Text("English \n",
                              style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
