import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
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
            padding: EdgeInsets.only(top: 40, left: 15, right: 15),
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
                      offset: Offset(0, 2), // changes position of shadow
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
                          Text("Name: \n", style: TextStyle(fontSize: 20)),
                          Text("Fahd Alharbi\n",
                              style: TextStyle(fontSize: 20)),
                        ],
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text("finished courses: \n",
                              style: TextStyle(fontSize: 20)),
                          Text("Flutter\n", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("language: \n ", style: TextStyle(fontSize: 20)),
                          Text("English \n", style: TextStyle(fontSize: 20)),
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