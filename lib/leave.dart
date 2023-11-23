import 'package:flutter/material.dart';
import 'package:flutter_edumeet/assignedleave.dart';
import 'package:flutter_edumeet/leaveapply.dart';

class Leaveapply extends StatelessWidget {
  const Leaveapply({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
     child: Scaffold(
       appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.red,
          title: Text("Assigned Leave",style: TextStyle(color: Colors.white),),
          actions: [IconButton(onPressed: (){},
           icon: Icon(Icons.search,color: Colors.white,))],
           bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.white,
            tabs: [
            Tab(text: "Assigned Leave",),
            Tab(text: "Leave Applay",)
           ]),
           
        ),
        body: TabBarView(children: [
            Assignedleave(),
            Leave()
            
        ]),
     ));
  }
}