import 'package:flutter/material.dart';



class Timetable extends StatelessWidget {
  const Timetable({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 6,
     child: Scaffold(
      backgroundColor: Color.fromARGB(255, 208, 206, 206),
      appBar: AppBar(backgroundColor: Colors.red,
      actions: [IconButton(onPressed: (){},
       icon: Icon(Icons.chat_outlined))],
        title: Text("Time Table Report"),
        
      ),
      body: TabBar(
        isScrollable: true,
        indicatorColor: Colors.red,
        tabs: [
        Tab(
          text: 'Monday',
        ),
        Tab(
          text: 'Tuesday',
        ),
        Tab(
          text: 'Wednesday',
        ),
        Tab(
          text: 'Thursday',
        ),
        Tab(
          text: 'Friday',
        ),
        
      ]),
      
     )
     );
  }
}