import 'package:flutter/material.dart';

class adddiariespage extends StatefulWidget {
  
 adddiariespage({super.key});

  @override
  State<adddiariespage> createState() => _adddiariespageState();
}

class _adddiariespageState extends State<adddiariespage> {
  final abc =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        title: Text('Add Diaries'),
        content: TextField(
          controller: abc,
          onChanged: (value){},
        ),
      ),
    );
  }
}