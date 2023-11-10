import 'package:flutter/material.dart';
import 'package:flutter_edumeet/adddiaries.dart';

class dairyscreen extends StatefulWidget {
  const dairyscreen({super.key});

  @override
  State<dairyscreen> createState() => _dairyscreenState();
}

class _dairyscreenState extends State<dairyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 234, 232, 232),
      appBar: AppBar(
        actions: [Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(Icons.search),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.chat),
        )],
        backgroundColor: Colors.red,
        title: Text('Diary'),
      ),
      body: ListView(
        children: [Padding(
          padding: const EdgeInsets.only(right: 20,top: 10,),
          child: Align(alignment: Alignment.topRight,
            child: TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>adddiariespage()));
              },
              child: Text('Add Diaries +',style:TextStyle(
                fontWeight: FontWeight.bold,color: Colors.black
              )),
            ),
          ),
        ),Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
          child: Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(alignment: Alignment.topLeft,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                        color: Colors.grey,
                      ),
                      child: Center(child: Text('6',style: TextStyle(color: Colors.white38,fontWeight: FontWeight.bold),)),
                    ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Good Day',style: TextStyle(
                       fontWeight: FontWeight.bold),),
                      ),
                  ],
                ),
              
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text('Date : 04-12-2023'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Row(
                        children: [
                          ElevatedButton(  
                            onPressed: (){},
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 238, 64, 11))),
                           child: Text('Edit')),
                           SizedBox(width: 20,),
                         ElevatedButton(onPressed: (){},
                         style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 247, 17, 1))
                         ),
                          child: Text('Delete')) 
                        ]
                      ),
                    ),
                  ),
              ],
            ),
            
          ),
        
        ),Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
          child: Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(alignment: Alignment.topLeft,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                        color: Colors.grey,
                      ),
                      child: Center(
                        child: Text('16',style: TextStyle(color: Colors.white38,
                        fontWeight: FontWeight.bold),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Good Day...Rainy Climate',style: TextStyle(
                                      fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                
                  Padding(
                    padding: const EdgeInsets.only(top: 5,left: 40),
                    child: Text('Date : 20-12-2023'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Row(
                        children: [
                          ElevatedButton(  
                            onPressed: (){},
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 238, 64, 11))),
                           child: Text('Edit')),
                           SizedBox(width: 20,),
                         ElevatedButton(onPressed: (){},
                         style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 247, 17, 1))
                         ),
                          child: Text('Delete')) 
                        ]
                      ),
                    ),
                  ),
              ],
            ),
            
          ),
        
        )
        ],
      ),
    );
  }
}