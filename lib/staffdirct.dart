import 'package:flutter/material.dart';

class StaffDirectory extends StatelessWidget {
  const StaffDirectory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.red,
        title: Text("Staff Directory",style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: const Color.fromARGB(255, 226, 224, 224),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25,bottom: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Class: 4 A",style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                Text('Subject Code: 101',style: TextStyle(
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
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