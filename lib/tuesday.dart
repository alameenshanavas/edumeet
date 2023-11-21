import 'package:flutter/material.dart';

class Tuesday extends StatelessWidget {
  const Tuesday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white70,
    body: ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 10),
        child: Container(
          height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("Period"),
                          Text("3",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Column(
                        children: [
                          Text("Subject"),
                          Text("English",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Column(
                        children: [
                          Text("Teacher"),
                          Text("Arjun",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Text("Room",style: TextStyle(color: Colors.white),),
                  Text("Room4",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            
          ],
            
        ),
        ),
      );
    },),);
  }
}