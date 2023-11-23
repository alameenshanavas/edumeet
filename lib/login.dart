import 'package:flutter/material.dart';
import 'package:flutter_edumeet/eduprofile.dart';
import 'package:flutter_edumeet/forgotpass.dart';


class Login extends StatefulWidget {
  
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [Container(
          height: 250,
          width: double.infinity,
          child: Image(image: AssetImage('assets /images/edumeet2.png'))
        ),Padding(
          padding: const EdgeInsets.only(left: 150,top: 30),
          child: Text("Login",style: TextStyle(
            fontWeight: FontWeight.bold,
            
            fontSize: 30,
            color: Colors.red),),
        ),Padding(
          padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.zero)),
                labelText: 'Username'
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30
          ,left: 10,right: 10),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.zero)),
                labelText: 'Password'
            ),
          ),
        ),Padding(
          padding: const EdgeInsets.only(top: 25),
          child: TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgot()));
          }, child: Text('Forgot your password?',style: TextStyle(color: Color.fromARGB(199, 0, 0, 0)),)),
        ),Padding(
          padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
          },
           child: Text('Login',style: TextStyle(color: Colors.white),),
          style: ElevatedButton.styleFrom(
            fixedSize: Size(double.infinity, 50),
            backgroundColor: Colors.black),
            ),
        )
        ],
      ),
    );
  }
}