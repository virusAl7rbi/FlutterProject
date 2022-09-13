// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class Course {
  final String title;
  final String description;
  final String trainer;

  Course(@required this.title, @required this.trainer, this.description);
}

class CourseDet extends StatelessWidget {
  final title;
  final trainer;
  final description;
  const CourseDet(this.title, this.trainer, this.description);

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
