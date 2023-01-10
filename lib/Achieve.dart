import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyAcheivement extends StatefulWidget {
  const MyAcheivement({super.key});

  @override
  State<MyAcheivement> createState() => _MyAcheivementState();
}

class _MyAcheivementState extends State<MyAcheivement> {
  Myach(Qualification, desc) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color.fromARGB(255, 40, 40, 40),
        child: Container(
          child: Column(
            children: [
              Container(
                child: Text(
                  Qualification,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                desc,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("ACHIVEMENTS"),
        backgroundColor: Color.fromARGB(255, 63, 63, 63),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Myach('High School',
                  ' I am completed my HighSchool from GURU NANAK CONVENT School in 2017 with 10 CGPA Grading .'),
              Myach('Intermediate',
                  'I am completed my Intermediate from LUCKNOW PUBLIC SCHOOL south city in 2019 with 75% Grading .'),
              Myach('B.Tech(1ST Year)',
                  'I am done My 1st Year in AJAY KUMAR GARG ENGINEERING College Gzb from Artificial Intelligence And Machine Learning Branch with 7.8 SGPA .'),
            ],
          ),
        ),
      ),
    );
  }
}
