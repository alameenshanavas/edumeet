import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Leave extends StatefulWidget {
  const Leave({super.key});

  @override
  State<Leave> createState() => _LeaveState();
}

class _LeaveState extends State<Leave> {
  var tim="";
  var timenow= TimeOfDay.now();
  var time=TextEditingController();



  var daat="";
 var datee=TextEditingController();

  @override
  Widget build(BuildContext context) => DefaultTabController(length: 2,
     child: Scaffold(backgroundColor: Color.fromARGB(255, 235, 232, 232),
    
      body: Column(
        children: [
         
         Expanded(
           child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context,index){
            return  Padding(
              padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Date: 25-12-2023',
                style: TextStyle(color: Colors.black45),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 55),
                child: Text('status',
                style: TextStyle(color: Colors.black45),),
              )
            ],
          ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        
                        color: Colors.white
                      ),
                      
                      child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("Applicant Name"),
                            Text("Amal BS",
                            style: TextStyle(
                              fontSize: 15,fontWeight: FontWeight.bold
                            ),)],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 50),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("Schedule"),
                            Text("Thu-may-2021",style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),)],
                            ),
                          ),
                         
                         
                        ],
                      ),
              
                      SizedBox(width: 30,),
                      
                      Padding(
                        padding: const EdgeInsets.only(left: 50,top: 5),
                        child: Column(
                        
                          children: [
                            
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Category"),
                                Text("Casul",
                                style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold)
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 55,right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Days"),
                                  Text("2",
                                  style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold))
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  
                   Padding(
                            padding: const EdgeInsets.only(left: 15,top: 30),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("Reason "),
                            Text("Api testing",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),)],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 40),
                            child: Column(
                              children: [Text("Attachment"),
                            SizedBox(
                              height: 30,
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(onPressed: (){},
                                 child: Text("data"),
                                 style: ElevatedButton.styleFrom(
                                        primary: Colors.grey
                                       )),
                              ),
                            ),
                            
                            ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Divider(thickness: 3,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                            
                              children: [
                                ElevatedButton(onPressed: (){},
                                 child: Text("Edit"),
                                 style: ElevatedButton.styleFrom(
                              primary: Colors.orange
                             )),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 10),
                                   child: ElevatedButton(onPressed: (){},
                                    child: Text("Delete"),
                                     style: ElevatedButton.styleFrom(
                              primary: Colors.red
                             )),
                                 )
                              ],
                            ),
                          )
              
                ],
              ),
                    ),
                  ),
                ],
              ),
            );
           }),
         ),
         
         SizedBox(width: double.infinity,height: 50,
           child: Padding(
             padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
             child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ))),
              onPressed: (){
                showDialog(context: context, builder: (context) => AlertDialog(
            title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Leave Application"),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.close))
              ],
            ),
            content: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Annual",
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.expand_more))
                  ),
                  
                ),
                SizedBox(height: 10,),
                TextField(
                controller: time,
                decoration: InputDecoration(
                  labelText: "Starting Time",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(onPressed: ()async{
                    final selectedTime=await showTimePicker(
                      context: context,
                     initialTime: TimeOfDay.now());
                     
                     if(selectedTime != null&&selectedTime != timenow){
                     setState(() {
                      time.text=selectedTime.format(context);
                      
                   
                     }
                     );
                    
                     }
                  },
                   icon: Icon(Icons.alarm))
                  
                ),
              ),
              SizedBox(height: 10,),
              TextField(
              controller: datee,
              decoration: InputDecoration(
              labelText: "Starting Date",
              border: OutlineInputBorder(),
              suffixIcon: IconButton(onPressed: ()async{
                final selectedDate=await showDatePicker(
                  context: context,
                 initialDate: DateTime(2000),
                  firstDate: DateTime(2000),
                   lastDate: DateTime(2030)
                   );
                   setState(() {
                    daat=DateFormat.MMMMd().format(selectedDate!);
                    //  dat=DateFormat.MMMEd().format(selectedDate!);
                     datee.text=daat;
                   });
              },
               icon: Icon(Icons.date_range)
               )
            ),
            ),
            SizedBox(height: 10,),
                TextField(
                controller: time,
                decoration: InputDecoration(
                  labelText: "End Time",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(onPressed: ()async{
                    final selectedTime=await showTimePicker(
                      context: context,
                     initialTime: TimeOfDay.now());
                     if(selectedTime != null&&selectedTime != timenow){
                     setState(() {
                      time.text=selectedTime.format(context);
                   
                     }
                     );
                    
                     }
                  },
                   icon: Icon(Icons.alarm))
                  
                ),
              ),
                SizedBox(height: 10,),
              TextField(
              controller: datee,
              decoration: InputDecoration(
              labelText: "End Date",
              border: OutlineInputBorder(),
              suffixIcon: IconButton(onPressed: ()async{
                final selectedDate=await showDatePicker(
                  context: context,
                 initialDate: DateTime(2000),
                  firstDate: DateTime(2000),
                   lastDate: DateTime(2030)
                   );
                   setState(() {
                    daat=DateFormat.MMMMd().format(selectedDate!);
                    //  dat=DateFormat.MMMEd().format(selectedDate!);
                     datee.text=daat;
                   });
              },
               icon: Icon(Icons.date_range)
               )
            ),
            ),
               
                SizedBox(height: 10,),
                TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Reason",
                    
                    
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Attachment",
                    suffixIcon: Icon(Icons.attachment)
                    
                  ),
                ),
                SizedBox(height: 15,),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(const Color.fromARGB(255, 142, 141, 141)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(10),
                        
                      )
                    )
                  ),
                  onPressed: (){}, 
                child: Text("Submit"))
              ],
            ),
           
          ),);
              },
              child: Text('Add A Leave Application')),
           ),
         ),
        ],
      ),
      
      )

    );
}