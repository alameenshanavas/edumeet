// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_edumeet/api/apilogin.dart';
import 'package:flutter_edumeet/models/profilemodel.dart';
import 'package:image_picker/image_picker.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class proscreen extends StatefulWidget {
  const proscreen({super.key});

  @override
  State<proscreen> createState() => _proscreenState();
}

class _proscreenState extends State<proscreen> {
  final firstnamecontroller = TextEditingController();
  final middlenamecontroller = TextEditingController();
  final lastnamecontroller = TextEditingController();
  var getvalu="";
  
  void initState() {
    // TODO: implement initState
    super.initState();
    datadetail();
   
  }
  String? name;
  String? mname;
  String? lname;
  String? gender;
  String? reg;
  String? parents;
  String? lparents;
  String? classname;
  int? division;
  int? rollNumber;
  String? dob;
  String? phone;
  String? email;
  String? address;
  String? place;
  String? post;
  String? bgroup;
  int? state;
  int? country;
  String? first;


     File? _profileImage;
Future<void> _getImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 225, 225),
      body: ListView(
        children: [
          Stack(children: [
            Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 10),
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 25,
                        )),
                  ),
                ),
                height: 150,
                width: double.infinity,
                color: Colors.red),

  Padding(
    padding: const EdgeInsets.only(top: 80),
    child: Align(alignment: Alignment.bottomCenter,
      child: GestureDetector(
                  onTap: _pickProfileImage,
                  child: _profileImage == null
                      ? CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.grey,
                         backgroundImage: AssetImage('assets /images/edumeet3.jpg'),
                        )
                      : CircleAvatar(
                          radius: 60,
                          backgroundImage: FileImage(_profileImage!),
                        ),
                ),
    ),
  ),
            Padding(
              padding: const EdgeInsets.only(top: 160,left: 70),
              child: Align(alignment: 
              Alignment.bottomCenter,
                child: IconButton(splashColor: Colors.red,
                color: Colors.black,
                  onPressed: _pickProfileImage,
                  tooltip: 'Pick Profile Picture',
                  icon: Icon(Icons.add_a_photo,),
                  
                ),
              ),
            ),

          ]),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 145,bottom: 15),
                        child: Text(
                          '$name $mname$lname',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,bottom: 7),
                        child: IconButton(onPressed: (){
                          showModalBottomSheet(
                            context: context,
                            elevation: 10,
                            backgroundColor: Colors.white,
                           builder: (BuildContext context){
                            return SizedBox(
                              height: 400,
                              width: double.infinity,
                              child: Column(
                                children: [Padding(
                                  padding: const EdgeInsets.only(top: 50,right: 10,left: 10),
                                  child: TextField(
                                    controller: firstnamecontroller,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      hintText: 'First Name'
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 10,left: 10),
                                  child: TextField(
                                    controller: middlenamecontroller,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      hintText: 'Middle Name'
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 10,left: 10),
                                  child: TextField(
                                    controller: lastnamecontroller,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      hintText: 'Last Name'
                                    ),
                                  ),
                                ),
                               SizedBox(
                                height: 70,
                                width: 330,
                                 child: Padding(
                                   padding: const EdgeInsets.only(top: 30),
                                   child: ElevatedButton(
                                    
                                    onPressed: (){
                                      
                                     dataedit();

                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.red
                                    ),
                                    child: Text('SAVE',style: TextStyle(color: Colors.white),)),
                                 ),
                               )
                                ],
                                
                              ),
                            );
                           });
                        },
                         icon: Icon(Icons.edit)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text('Reg No:$reg'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: CircleAvatar(
                              radius: 25,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets /images/edumeet4.png'),
                                radius: 23,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, bottom: 13, top: 13),
                            child: Column(
                              children: [
                                Text(
                                  '$parents $lparents',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 2, right: 27),
                                  child: Text('Parent'),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Container(
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Gender'),
                            Text('Class'),
                            Text('Division'),
                            Text('Roll No'),
                            Text('DOB'),
                            Text('Phone')
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(': $gender'),
                            Text(': $classname'.toString()),
                            Text(': $division'),
                            Text(': $rollNumber'),
                            Text(': $dob'),
                            Text(': $phone')
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email'),
                      Text('Secondary Phone'),
                      Text('Address'),
                      Text('Place'),
                      Text('Post Code'),
                      Text('Blood Group'),
                      Text('State'),
                      Text('Country')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(': $email'),
                      Text(': +91-8086740064'),
                      Text(': 1st Floor,Trust Building'),
                      Text(': $place'),
                      Text(': $post'),
                      Text(': $bgroup'),
                      Text(': $state'),
                      Text(': $country')
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

 void dataedit() async{
    final first_name = firstnamecontroller.text;
    final middle_name = middlenamecontroller.text;
    final last_name = lastnamecontroller.text;

    if(first_name.isEmpty==true){
    showErrorMessage('Please Enter Firstnmae');
    }
    else if(middle_name.isEmpty==true){
      showErrorMessage('Please Enter Middlename');
    }
    else if(last_name.isEmpty==true){
      showErrorMessage('please enter Lastname');
    }
    else{
          final formdata = FormData.fromMap({
            'first_name': first_name,
            'middle_name': middle_name,
            'last_name' : last_name,
          });
          print("$formdata");

          final result = await Apiclass().editUserApi(formdata);
          if (result !=null){
            if(result.status ==1){
              showSuccessMessage("Edit Successful");
       

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




  void datadetail ()async{
  final result = await Apiclass().detatilUserApi(); 
  setState(() {
    name = result?.data.firstName;
    mname = result?.data.middleName;
    lname = result?.data.lastName;
    gender = result?.data.gender;
    reg = result?.data.regNumber;
    parents = result?.data.parents.firstName;
    lparents = result?.data.parents.lastName;
    classname = result?.data.classname.name;
    division = result?.data.division;
    rollNumber = result?.data.rollNumber;
    dob = result?.data.dob;
    phone = result?.data.phone;
    email = result?.data.email;
    address = result?.data.address;
    place = result?.data.place;
    post = result?.data.post;
    bgroup = result?.data.blood;
    state = result?.data.state;
    country = result?.data.country;
    
  });
  }

  Future<void> _pickProfileImage() async {
    showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 200,
                                child: Column(
                                  children: [
                                    Container(
                                        color: Colors.red,
                                        height: 40,
                                        alignment: Alignment.center,
                                        width: double.infinity,
                                        child: Text('Choose Source')),
                                        SizedBox(height: 30,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            CircleAvatar(
                                                radius: 30,
                                                backgroundColor: Colors.red,
                                                child: IconButton.outlined(
                                                  onPressed: () {
                                                  _getImage(ImageSource.camera);
                                                  },
                                                  icon: Icon(
                                                      Icons.photo_camera),
                                                  color: Colors.white,
                                                )),
                                                Text('Camera')
                                          ],
                                        ),
                                      
                                 
                                    
                                        Column(
                                          children: [
                                            CircleAvatar(
                                                radius: 30,
                                                backgroundColor: Colors.red,
                                                child: IconButton.outlined(
                                                  onPressed: () { _getImage(ImageSource.gallery);
                                                  Navigator.pop(context);},
                                                  icon: Icon(
                                                      Icons.photo_album),
                                                  color: Colors.white,
                                                )),
                                                Text('Gallery')
                                          ],
                                        )]
                                        )
                                      ],
                                    
                                  
                                ),
                              );
                            }
                            );
  }
}
