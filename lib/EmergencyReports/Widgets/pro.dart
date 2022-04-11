// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
