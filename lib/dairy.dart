import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Diary extends StatefulWidget {
  const Diary({super.key});

  @override
  State<Diary> createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  var daat="";
 var datee=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.red,
        title: Text("Diary",style: TextStyle(color: Colors.white),),
        actions: [
          Row(
            children: [
              IconButton(onPressed: (){},
               icon: Icon(Icons.search,color: Colors.white,)),
               IconButton(onPressed: (){}
               , icon: Icon(Icons.chat_outlined,color: Colors.white,))
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
              showDialog(
                
                context: context, builder: (context) => 
                AlertDialog(
                  backgroundColor: Colors.white,
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
                  controller: datee,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "enter date",
                    suffixIcon: IconButton(onPressed: ()async{
                      final selectedDate=await showDatePicker(
                  context: context,
                 initialDate: DateTime(2000),
                  firstDate: DateTime(2000),
                   lastDate: DateTime(2030)
                   );
                   setState() {
                    daat=DateFormat.MMMEd().format(selectedDate!);
                    //  dat=DateFormat.MMMEd().format(selectedDate!);
                     datee.text=daat;
                   };

                    }, icon: Icon(Icons.calendar_month))
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
              child: Text("Submit",style: TextStyle(color: Colors.white),))
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
                           child: Text('Edit',style: TextStyle(color: Colors.white),)),
                           SizedBox(width: 20,),
                         ElevatedButton(onPressed: (){},
                         style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)
                          
                         ),
                          child: Text('Delete',style: TextStyle(color: Colors.white),)) 
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