import 'package:flutter/material.dart';
import 'package:fluttor_application_02/Achieve.dart';
import 'package:fluttor_application_02/about.dart';
import 'package:fluttor_application_02/home.dart';
import 'package:fluttor_application_02/project.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home': (Context) => Myhome(),
      'about': (context) => Myabout(),
      'project': (context) => Myproject(),
      'Achievement': (context) => MyAcheivement(),
    },
  ));
}
