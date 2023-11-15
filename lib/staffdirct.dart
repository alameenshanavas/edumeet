import 'package:flutter/material.dart';

class staff extends StatefulWidget {
  const staff({super.key});

  @override
  State<staff> createState() => _staffState();
}

class _staffState extends State<staff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 227, 225, 225),
      appBar: AppBar(backgroundColor: Colors.red,
        title: Text('Staff Directory'),
      ),
      body: Column(
        children: [Padding(
          padding: const EdgeInsets.only(top: 20,left: 15),
          child: Text('Subject Teacher',style: TextStyle(color: Colors.black45),),
        ),
        Column(
          children: [ListView.builder(itemBuilder: itemBuilder)],
        )
        ],
      ),
      
    );
  }
}