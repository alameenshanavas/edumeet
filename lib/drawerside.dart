import 'package:flutter/material.dart';
import 'package:flutter_edumeet/dairy.dart';
import 'package:flutter_edumeet/leave.dart';
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
    return Drawer(
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
                    radius: 53,),
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
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
          ),ListTile(
            leading: Icon(Icons.person_search_rounded),
            title: Text('Profile'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>proscreen()));
            },
            trailing: Icon(Icons.expand_more),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Subject'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Subject()));
            },
            trailing: Icon(Icons.expand_more),        
          ),
          ListTile(
            leading: Icon(Icons.auto_stories),
            title: Text('Staff Directory'),
            onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>StaffDirectory(


               )));
            },
            trailing: Icon(Icons.expand_more),
          ),ListTile(
            leading: Icon(Icons.check_box),
            title: Text('Dairy'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Diary()));
            },
            trailing: Icon(Icons.expand_more),
            
            
          ),ListTile(
            leading: Icon(Icons.tab),
            title: Text('Leave Apply'),
            onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Leaveapply()));
            },
            trailing: Icon(Icons.expand_more),
            
            
          ),
          ListTile(
            leading: Icon(Icons.edit_document),
            title: Text('Time Table'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Timetable()));
            },
            trailing: Icon(Icons.expand_more),
          ),ListTile(
            leading: Icon(Icons.video_call),
            title: Text('Online Class'),
          ),ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          )
          ],
      ),
    );
  }
}
