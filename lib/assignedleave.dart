import 'package:flutter/material.dart';

class Assignedleave extends StatelessWidget {
  final list1=["Xmas","Onam","Marriage"];
  final list2=["10 Days","10 Days","3 Days"];
  
   Assignedleave({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.black12,
      body: ListView.builder(
        itemCount: list1.length,
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
                Text(list1[index]),
                Text(list2[index]),
              ],
            ),
          ),
        );
      },
      ),
    );
  }
}