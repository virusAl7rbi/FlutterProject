// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Course {
  final String title;
  final String description;
  final String trainer;
  final String vid;

  Course(this.title, this.trainer, this.description, this.vid);
}

class CourseDet extends StatelessWidget {
  final String title;
  final String trainer;
  final String description;
  final String vid;
  const CourseDet(
      {super.key,
      required this.title,
      required this.description,
      required this.trainer,
      required this.vid});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      margin: EdgeInsets.only(top: 40, left: 15, right: 15),
      child: Container(
        alignment: Alignment.center,
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
          padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
          child:
              // ignore: duplicate_ignore
              Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(vid),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                      Divider(
                        thickness: 3,
                      ),
                      Text(
                        "Trainer: $trainer",
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Divider(
                        thickness: 3,
                      ),
                      Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 180, 180, 180)),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Text(
                            description,
                            softWrap: true,
                          ),
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
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
      margin: EdgeInsets.only(top: 40, left: 15, right: 15),
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
                  backgroundImage: AssetImage("assets/img/personal.jpeg"),
                  radius: 70,
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
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
    );
  }
}
