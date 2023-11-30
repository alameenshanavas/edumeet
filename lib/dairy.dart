import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_edumeet/api/apilogin.dart';
import 'package:flutter_edumeet/models/diariesmodel.dart';
import 'package:intl/intl.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';


class Diary extends StatefulWidget {
  const Diary({super.key});

  @override
  State<Diary> createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
 var jsonlist=[];
ValueNotifier<List<Diariesdata>> diariNotifier= ValueNotifier([]); 

  var daat="";
 var datee=TextEditingController();
 var date=TextEditingController();
 var note=TextEditingController();

 void initState() {
    // TODO: implement initState
    super.initState();
    datadiaries();
    dataupdate();
   
  }

  

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
                  
                  controller: date,
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
                    // dat=DateFormat.MMMEd().format(selectedDate!);
                     date.text=daat;
                   };

                    }, icon: Icon(Icons.calendar_month))
                  ),
                  
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: note,
                maxLines: 10,
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
                onPressed: (){
                  Navigator.pop(context);
                }, 
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
              itemCount: jsonlist.length,
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
                      child: Center(child: Text(jsonlist[index].id.toString(),style: TextStyle(color: Colors.white38,fontWeight: FontWeight.bold),)),
                    ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text((jsonlist)[index].note.toString(),
                        style: TextStyle(
                       fontWeight: FontWeight.bold),),
                      ),
                  ],
                ),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(jsonlist[index].date.toString()),
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



  void dataupdate() async{
  final _date = date;
  final _note = note;
   
    final formdata = FormData.fromMap({
            'date': _date,
            'note': _note,
            
          });
          print("$formdata");
    
  }
  


  
  void datadiaries()async{
  final result = await Apiclass().DiariUserApi();
  print("+++++++++$result");
  setState(() {
    
    jsonlist.addAll(result!.data!);
    
    print(jsonlist);
    // id = result?.data.id.toString();
  });
  }
}