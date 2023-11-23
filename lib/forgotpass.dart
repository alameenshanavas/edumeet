import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Text('Forgot Password',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.red),),
          ),Padding(
            padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.zero)),
                  labelText: 'Email'),            
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
             child: Text('Submit',style: TextStyle(color: Colors.white),),
             style: ElevatedButton.styleFrom(fixedSize: Size(330, 50),
             backgroundColor: Colors.black),),
          )
        ],
        ),
      ),
    );
  }
}