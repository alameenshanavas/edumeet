import 'package:flutter/material.dart';


class Diary extends StatelessWidget {
  const Diary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,
        title: Text("Diary"),
        actions: [
          Row(
            children: [
              IconButton(onPressed: (){},
               icon: Icon(Icons.search)),
               IconButton(onPressed: (){}
               , icon: Icon(Icons.chat_outlined))
            ],
          )
        ],
      ),
      backgroundColor: Color.fromARGB(179, 245, 243, 243),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 230),
            child: TextButton(
            onPressed: (){
              showDialog(context: context, builder: (context) => AlertDialog(
                  title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Add Diaries"),
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.close))
            ],
                  ),
                  content: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "enter date",
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month))
                  ),
                  
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                maxLines: 15,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter note",
                  
                ),
              ),
              SizedBox(height: 15,),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 0, 21, 11)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(20),
                      
                    )
                  )
                ),
                onPressed: (){}, 
              child: Text("Submit"))
            ],
                  ),
                   
                  ),);
            
            },
            child: Text('Add Diaries +',style:TextStyle(
              fontWeight: FontWeight.bold,color: Colors.black
            )),
                  ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context,index){
              return
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
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
                              backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                           child: Text('Edit')),
                           SizedBox(width: 20,),
                         ElevatedButton(onPressed: (){},
                         style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)
                          
                         ),
                          child: Text('Delete')) 
                        ]
                      ),
                    ),
                  ),
                  ],
                ),
                
                          ),
              );
            }),
          )
        ],
      ),
    );
  }
}