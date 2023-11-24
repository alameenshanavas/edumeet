import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_edumeet/api/apilogin.dart';
import 'package:flutter_edumeet/eduprofile.dart';
import 'package:flutter_edumeet/forgotpass.dart';
import 'package:flutter_edumeet/models/loginmodel.dart';
import 'package:flutter_edumeet/sharedval.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Login extends StatefulWidget {
  
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();

  static fromjson(data) {}
}

class _LoginState extends State<Login> {
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  var getval = "";
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
            controller: usernamecontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red
                ),
                borderRadius: BorderRadius.all(Radius.zero)),
                labelText: 'Username'
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30
          ,left: 10,right: 10),
          child: TextField(
            controller: passwordcontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red
                ),
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
           loginUser();     
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
  void loginUser() async{
    final username = usernamecontroller.text;
    final password = passwordcontroller.text;

    if(username.isEmpty==true){
    showErrorMessage('Please Enter Email');
    }
    else if(password.isEmpty==true){
      showErrorMessage('Please Enter Password');
    }
    else{
          final formdata = FormData.fromMap({
            'username': username,
            'password': password,
          });
          print("$formdata");

          final result = await Apiclass().loginUserApi(formdata);
          if (result !=null){
            if(result.status ==1){
              showSuccessMessage("Login Successful");
              var token = result.message;
              print(token);
              sharedvalue(token);

            } else {
              showErrorMessage("Error");
            }
          }

    }
  }
  
  void showErrorMessage(String message){
    MotionToast.error(
      title: Text('Error',style: TextStyle(fontWeight: FontWeight.bold),),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
      description: Text(message)).show(context);
  }

  void showSuccessMessage(String message){
    MotionToast.success(
      title: Text('Success',style: TextStyle(fontWeight: FontWeight.bold),),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
      description: Text(message)).show(context);
  }

} 
