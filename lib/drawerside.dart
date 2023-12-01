import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_edumeet/api/apilogin.dart';
import 'package:flutter_edumeet/dairy.dart';
import 'package:flutter_edumeet/leave.dart';
import 'package:flutter_edumeet/login.dart';
import 'package:flutter_edumeet/models/logoutmodel.dart';
import 'package:flutter_edumeet/profile.dart';
import 'package:flutter_edumeet/staffdirct.dart';
import 'package:flutter_edumeet/subject.dart';

import 'package:flutter_edumeet/timetable.dart';

class  drawer extends StatelessWidget {
  const drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(backgroundColor: Colors.white,
      child: ListView(
        children: [DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.red
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  radius: 55,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets /images/edumeet3.jpg'),
                    radius: 55,),
                ),
              ),Align(alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text('Hello',style: TextStyle(fontSize: 17,
                        color: Colors.white),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text('Kiran RV',style: TextStyle(fontSize: 20,
                        color: Colors.white),),
                      )
                    ],
                  ),
                ),
                ),
            ],
          ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard,color: Colors.black54,),
            title: Text('Dashboard',style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.black54),),
          ),ListTile(
            leading: Icon(Icons.person_search_rounded,color: Colors.black54,),
            title: Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.black54),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>proscreen()));
            },
            trailing: Icon(Icons.expand_more,),
          ),
          ListTile(
            leading: Icon(Icons.school,color: Colors.black54,),
            title: Text('Subject',style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.black54),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Subject()));
            },
            trailing: Icon(Icons.expand_more),        
          ),
          ListTile(
            leading: Icon(Icons.auto_stories,color: Colors.black54,),
            title: Text('Staff Directory',style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.black54),),
            onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>StaffDirectory(


               )));
            },
            trailing: Icon(Icons.expand_more),
          ),ListTile(
            leading: Icon(Icons.check_box,color: Colors.black54,),
            title: Text('Dairy',style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.black54),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Diary()));
            },
            trailing: Icon(Icons.expand_more),
            
            
          ),ListTile(
            leading: Icon(Icons.tab,color: Colors.black54,),
            title: Text('Leave Apply',style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.black54),),
            onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Leaveapply()));
            },
            trailing: Icon(Icons.expand_more),
            
            
          ),
          ListTile(
            leading: Icon(Icons.edit_document,color: Colors.black54,),
            title: Text('Time Table',style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.black54),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Timetable()));
            },
            trailing: Icon(Icons.expand_more),
          ),ListTile(
            leading: Icon(Icons.video_call,color: Colors.black54,),
            title: Text('Online Class',style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.black54),),
          ),ListTile(
            leading: Icon(Icons.logout,color: Colors.black54,),
            title: Text('Logout',style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.black54),),
            onTap: (){
             
                showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Want to Logout?',style: TextStyle(fontSize: 20),),
          
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'NO',),
              child: const Text('NO',style: TextStyle(color: Colors.red),),
            ),
            TextButton(
              onPressed: ()async {
                final result = await Apiclass().logoutUserApi();
                if(result!= null){

                  if(result.status==1){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
  
                  }
                }

           
              },
              child: const Text('YES',style: TextStyle(color: Colors.red),),
            ),
          ],
        ),
      );




              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
            },
          )
          ],
      ),
    );
  }

         
  }

