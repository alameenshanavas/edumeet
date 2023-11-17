import 'package:flutter/material.dart';

class tabalescreen extends StatelessWidget {
  const tabalescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.chat_outlined),
        )
      ],
        backgroundColor: Colors.red,
        title: Text('Time Table Report'),    
      ),
      body: TabBar(tabs: [Tab(text: 'sunday',),
      Tab(text: 'sunday',),
      Tab(text: 'sunday',)]),
      
    );
  }
}