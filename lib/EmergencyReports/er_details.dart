// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_string_interpolations, unused_import, deprecated_member_use

import 'package:admin_reports/EmergencyReports/panic_button.dart';
import 'package:flutter/material.dart';
import 'er.dart';

import '../Model/user.dart';

class EmergencyReportDetails extends StatelessWidget {
  //final String userName;
  final User user;
  final formKey = GlobalKey<FormState>();

  EmergencyReportDetails({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Emergency Report Details"),
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
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
            child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          height: 1000,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: Column(children: [
            SizedBox(height: 20),
            Container(
                child: Center(
              child: Text("Date of Incident"),
            )),
            SizedBox(height: 20),
            Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Color.fromARGB(255, 160, 160, 160), width: 1),
                ),
                child: Center(
                  child: Text(user.date),
                )),
            SizedBox(height: 20),
            Container(
                child: Center(
              child: Text("Location of incident"),
            )),
            SizedBox(height: 20),
            Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color.fromARGB(255, 160, 160, 160), width: 1)),
                child: Center(
                  child: Text(user.location),
                )),
            SizedBox(height: 20),
            Container(
                child: Center(
              child: Text("Tell Your Story"),
            )),
            SizedBox(height: 20),
            Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color.fromARGB(255, 160, 160, 160), width: 1)),
                child: Center(
                  child: Text(user.reportDescription),
                )),
            SizedBox(height: 20),
            Container(
                child: Center(
              child: Text("Witness"),
            )),
            SizedBox(height: 20),
            Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color.fromARGB(255, 160, 160, 160), width: 1)),
                child: Center(
                  child: Text(user.witness),
                )),
            SizedBox(height: 30),
            Container(
                child: Center(
              child: Text("Attachments"),
            )),
            SizedBox(height: 20),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width: 40,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.image_outlined),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.audio_file_rounded),
                      ),
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        height: 40,
                        width: 40,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.video_collection_outlined,
                          ),
                        ))
                  ]),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: Text("Mark As Read"),
            ),
            SwitchListTile(
                title: Text("Case Solved"),
                value: user.markAsRead,
                onChanged: (bool val) => setState(() => user.markAsRead = val)),
            SizedBox(height: 24),
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

setState(bool Function() param0) {
  return param0 = () => true;
}

class ProfileThumbnail extends StatelessWidget {
  final String thumbnail;

  const ProfileThumbnail({Key? key, required this.thumbnail}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: 190,
                decoration: (BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(thumbnail), fit: BoxFit.cover)))),
            Icon(Icons.access_alarms_outlined,
                size: 20, color: Color.fromARGB(255, 34, 34, 34))
          ],
        )
      ],
    );
  }
}
