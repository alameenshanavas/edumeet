import 'package:flutter/material.dart';

class Subject extends StatefulWidget {
  const Subject({super.key});

  @override
  State<Subject> createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 211, 211),
      appBar: AppBar(backgroundColor: Colors.red,
        title: Text("Subject"),
        actions: [
          Row(
            children: [
                IconButton(onPressed: (){},
                 icon: Icon(Icons.search)),
                 IconButton(onPressed: (){},
                  icon: Icon(Icons.chat_bubble_outline))
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Text("Class :",style: TextStyle(
                                color: Colors.black54
                              ),),
                              Text("4A",style: TextStyle(
                                color: Colors.black54
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Text("Subject Code :",style: TextStyle(
                                color: Colors.black54
                              ),),
                              Text("101",style: TextStyle(
                                color: Colors.black54
                              ),)
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
            padding: const EdgeInsets.only(
              top: 20,left: 10,right: 10,bottom: 10),
            child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                
                        
                        Text("Subject Name"),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text("Mathematics",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),),
                        ),],
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                
                       
                  Text("Teacher"),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Anil vk, K Sharath, Muhammed PK",
                    style: TextStyle(
                          fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),),
                  ) 
                      ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            Text("Subject Author:"),
                            Text(" Pythagoras",
                            style: TextStyle(
                              fontSize: 15,
                            fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Text("Pass Mark:"),
                            Text(" 15",
                            style: TextStyle(
                              fontSize: 15,
                            fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            Text("Final Mark:"),
                            Text(" 50",style: TextStyle(
                            fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      TextButton(onPressed: (){},
                       child: Text("Note:",style: TextStyle(color: Colors.red,
                       decoration: TextDecoration.underline,
                       decorationThickness: 3),
                       ),)
                       ],
                  ),
                ),
              ),
          )
                  ],
                );
              },),
          ),
        ],
      )
    );
  }
}