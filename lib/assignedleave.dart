import 'package:flutter/material.dart';

class Assignedleave extends StatelessWidget {
  const Assignedleave({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.black12,
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10,left: 10,right: 10,),
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("data"),
                Text("data")
              ],
            ),
          ),
        );
      },
      ),
    );
  }
}