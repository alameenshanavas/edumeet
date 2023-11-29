import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_edumeet/login.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(theme: ThemeData(primaryColor:Colors.red),
      home: Homescreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),
     () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
     });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
          color: const Color.fromARGB(255, 246, 19, 3),
          borderRadius: BorderRadius.all(Radius.circular(15),)),
          height: 150,
          width: 150,
          child: Center(
            child: Text(
              "EDUMEET",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
