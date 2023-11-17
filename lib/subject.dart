import 'package:flutter/material.dart';

class Subject extends StatefulWidget {
  const Subject({super.key});

  @override
  State<Subject> createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(backgroundColor: Colors.red,
        title: Text('Subject'),
      ), body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25,right: 180,bottom: 20),
            child: Align(
              
              child: Text("Subject Teacher")),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Subject"),
                          Text("Teacher")
                        ],
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(": Mathematics"),
                          Text(": K sarath,Muhammed PK,Anil V")
                        ],
                      )
                    ],
                  ),
                ),
              );
            },),
          )
        ],
      ),
    );
  }
}