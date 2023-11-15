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
       appBar: AppBar(backgroundColor: Colors.red,
          title: Text("Assigned Leave"),
          actions: [IconButton(onPressed: (){},
           icon: Icon(Icons.search))],
           bottom: TabBar(tabs: [
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