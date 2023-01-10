import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Myproject extends StatefulWidget {
  const Myproject({super.key});

  @override
  State<Myproject> createState() => _MyprojectState();
}

class _MyprojectState extends State<Myproject> {
  Mypro(lang, type, frmwrk) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color.fromARGB(255, 40, 40, 40),
        child: Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  lang,
                  style: TextStyle(color: Colors.white, fontSize: 27.0),
                ),
              ),
              Text(
                type,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              Text(
                frmwrk,
                style: TextStyle(color: Colors.white, fontSize: 27.0),
              ),
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ))
                ],
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
        backgroundColor: Color.fromARGB(255, 40, 40, 40),
        title: Text('Project'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Mypro('FLUTTER', 'MY Project', 'In VS code'),
              SizedBox(
                height: 10,
              ),
              Mypro('Web Site', 'My web Projects', 'in Online Compiler'),
              SizedBox(
                height: 10,
              ),
              Mypro('Python', 'Data Science', 'Pending'),
            ],
          ),
        ),
      ),
    );
  }
}
