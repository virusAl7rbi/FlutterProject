// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class Course {
  final String title;
  final String description;
  final String trainer;

  Course(this.title, this.trainer, this.description);
}

class CourseDet extends StatelessWidget {
  final String title;
  final String trainer;
  final String description;
  const CourseDet(
      {super.key,
      required this.title,
      required this.description,
      required this.trainer});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      margin: EdgeInsets.only(top: 40, left: 15, right: 15),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: const Offset(0, 2), // changes position of shadow
              ),
              //you can set more BoxShadow() here
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child:
              // ignore: duplicate_ignore
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Text(
              "Trainer: $trainer",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(description),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class Instructor {
  final String name;
  final int courses;
  final String field;
  final String picURL;

  Instructor(this.name, this.field, this.courses, this.picURL);
}

class InstructorDet extends StatelessWidget {
  final String name;
  final int courses;
  final String field;
  final String picURL;

  const InstructorDet(
      {super.key,
      required this.name,
      required this.courses,
      required this.field,
      required this.picURL});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.only(top: 40, left: 15, right: 15),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: const Offset(0, 2), // changes position of shadow
              ),
              //you can set more BoxShadow() here
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(picURL),
                    radius: 70,
                  ),
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w800),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Courses: $courses",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 15,
                ),
                Text(
                  "field:",
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  field,
                  style: TextStyle(fontSize: 17),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
