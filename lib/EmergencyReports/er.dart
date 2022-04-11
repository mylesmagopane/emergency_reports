// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names, duplicate_ignore, unused_import, prefer_const_literals_to_create_immutables

import 'dart:typed_data';
import 'package:admin_reports/EmergencyReports/panic_button.dart';
import 'package:admin_reports/Model/user.dart';
import 'package:flutter/material.dart';
import 'er_details.dart';
import 'Widgets/pro.dart';

class EmergencyReports extends StatelessWidget {
  // This widget is the root of your application.

  final List<User> userList = User.getUsers();

  // ignore: non_constant_identifier_names
  final List Names = [
    "Sammy Simons",
    "Candy Richards",
    "Randy Jackson",
    "Jason Fire",
    "Tomothy Jameson"
  ];

  final List Subject = [
    "Rape",
    "Theft",
    "Racial Abuse",
    "Vandalism",
    "Trespassing"
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations

    return Scaffold(
      appBar: AppBar(
        title: Text("Emergency Reports"),
        centerTitle: true,
        elevation: 35,
        actions: <Widget>[
          IconButton(
              onPressed: null,
              icon: IconButton(
                icon: Icon(Icons.emergency_outlined),
                color: Colors.white,
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
                  Color.fromARGB(255, 155, 38, 30),
                  Color.fromARGB(255, 151, 27, 27),
                  Color.fromARGB(255, 137, 14, 14),
                  Color.fromARGB(255, 35, 5, 5),
                ],
              )),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Color.fromARGB(198, 182, 180, 180),
          ),
          margin: EdgeInsets.all(2.0),
          child: (ListView.builder(
              itemCount: userList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  margin: EdgeInsets.all(2.0),
                  elevation: 4.5,
                  color: Colors.white,
                  child: ListTile(
                      leading: CircleAvatar(
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(userList[index].profilePic),
                                fit: BoxFit.cover,
                              ),
                              color: Color.fromARGB(255, 163, 163, 163),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                      trailing: Text("2hrs"),
                      title: Text(userList.elementAt(index).name),
                      subtitle: Text(userList.elementAt(index).cases),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EmergencyReportDetails(
                                      user: userList[index],
                                    )));
                      }),
                );
              }))),
    );
  }
}

Widget UserCard(Names names, BuildContext context) {
  return InkWell(
    // ignore: sized_box_for_whitespace
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 120.0,
      child: Card(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 54.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[Text("9hrs")],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class Names {}

Widget profileImage(String imageUrl) {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.blue,
    ),
  );
}
