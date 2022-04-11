// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_string_interpolations, unused_import, deprecated_member_use, unnecessary_import, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'er.dart';

import '../Model/user.dart';

class PanicButton extends StatelessWidget {
  //final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("="),
          centerTitle: true,
          elevation: 35,
          actions: <Widget>[
            IconButton(
                onPressed: null,
                icon: IconButton(
                  icon: Icon(Icons.emergency_outlined),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PanicButton()));
                  },
                ))
          ],
          backgroundColor: Colors.grey.shade300,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors: const [
                    Color.fromARGB(255, 25, 2, 2),
                    Color.fromARGB(255, 99, 16, 10),
                    Color.fromARGB(255, 190, 21, 21),
                    Color.fromARGB(255, 91, 7, 7),
                    Color.fromARGB(255, 35, 5, 5),
                  ],
                )),
          ),
        ),
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
            child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
          ),
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          height: 700,
          width: 550,
          child: Column(children: [
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 0, 0, 0),
                    Color.fromARGB(255, 28, 0, 0),
                    Color.fromARGB(255, 56, 0, 0),
                    Color.fromARGB(255, 39, 0, 0),
                    Color.fromARGB(255, 0, 0, 0),
                  ])),
              height: 450,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Text(
                    "Safety App",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      decorationThickness: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                      child: Container(
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: const [
                            Color.fromARGB(255, 100, 9, 9),
                            Color.fromARGB(255, 135, 27, 19),
                            Color.fromARGB(255, 190, 21, 21),
                            Color.fromARGB(255, 125, 17, 17),
                            Color.fromARGB(255, 119, 12, 12),
                          ],
                        ),
                        shape: BoxShape.circle),
                    width: 200,
                    child: Container(
                      padding: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              color: Color.fromARGB(255, 255, 255, 255),
                              shape: CircleBorder(),
                              elevation: 50,
                              onPressed: () {
                                debugPrint('button clicked');
                              },
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/power2.jpg'),
                                radius: 60,
                              )),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  )),
                  SizedBox(height: 20),
                  Text(
                    'SOS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'Do Not Hezitate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    'Take a Stand!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/warning1.jpg'),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 100),
                color: Color.fromARGB(255, 121, 3, 9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmergencyReports()));
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
            SizedBox(height: 20),
            RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 100),
                color: Color.fromARGB(255, 121, 3, 9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmergencyReports()));
                },
                child: Text(
                  'Return',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ))
          ]),
        )));
  }
}
