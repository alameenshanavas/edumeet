import 'package:flutter/material.dart';
import 'package:flutter_edumeet/Notice.dart';
import 'package:flutter_edumeet/api/apilogin.dart';
import 'package:flutter_edumeet/drawerside.dart';
import 'package:flutter_edumeet/models/profilemodel.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();

  
}

class _ProfileState extends State<Profile> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
   
  }
  
  String? name;
  String? mname; 
  String? lname;
  String? reg;
  String? rollnumber;
  String? dob;
  String? parent;
  String? division;
  String? parents;
  String? lparents;
  String? classname;
  
  @override
  Widget build(BuildContext context) {
     setState(() {
         dataProf();
    });
 
    final lists = [
      'Programming Contest',
      'Parents Meeting',
      'Collage Day',
      'Collage Election',
      'Arts Festival'];
    final list1 = ['It is one of the oldest, largest, and most prestigious programming contests in the world. The contest participants come from over 2,000 universities spread across 80 countries and six continents.',
    'What is a parent-teacher meeting? This is a meeting between you and the teacher to talk about your childs learning and progress. They might be called parent teacher interviews parent teacher conferences or even learning conferences',
    'World Collage Day is an annual, international celebration of collage on the Second Saturday of May. Initiated by Kolaj Magazine in 2018, we invited artists and art venues to hold events on that day to celebrate collage.',
    'where colleges and campuses directly elect college and campus office bearers as well as university representatives. The university representatives form an electoral college which shall elect the university student union office bearers.',
    'An arts festival is a festival that can encompass a wide range of art forms including music dance film fine art literature poetry and is not solely focused on visual arts'];  
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 231, 231),
      drawer: drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 248, 20, 3),
        title: Text(
          'EDUMEET',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, 
        icon: Icon(Icons.chat,))],
      ),
      body: ListView(
        
        physics: ScrollPhysics(),
        children: [
          ClipRect(
            child: Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 100.0)),
                  color:  Color.fromARGB(255, 248, 20, 3)),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 85,
                    ),
                    height: 350,
                    width: double.infinity,
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Text(
                             "$name $mname$lname",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              'Reg.No:$reg',
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Text(
                                      'Class-$classname',
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      'Roll No-$rollnumber',
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  )
                                ]),
                              ),
                              Container(
                                height: 40,
                                width: 2,
                                color: Colors.black45,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text('Division-$division',
                                          style:
                                              TextStyle(color: Colors.black45)),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'DOB-$dob',
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 52,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets /images/edumeet3.jpg'),
                        radius: 52,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 75,
                    left: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 32,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets /images/edumeet4.png'),
                        radius: 32,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "$parents $lparents",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Parent',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // height: 750,
              // width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Icon(
                          Icons.notifications_active,
                          color: Colors.amber,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          'Notice',
                          style: TextStyle(fontSize: 17),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 950,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          child: ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                              itemBuilder: (context, index) =>
                                  InkWell(
                                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Noticepage())),
                                    child: ListTile(title: Text(lists[index],
                                    style: TextStyle(fontWeight: FontWeight.bold),),
                                    subtitle: Text(list1[index]),
                                    trailing: Icon(Icons.arrow_forward_ios),),
                                  ),
                              separatorBuilder: (context, index) => Divider(
                                    color: Colors.black,
                                  ),
                              itemCount: 5),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  void dataProf() async{
 final result =  await Apiclass().profUserApi();
 print("result**********${result}");

 setState(() {
  if(result!=null){
if(result.status==1){


  
   name = result!.data[0].firstName;
   mname = result.data[0].middleName;
   lname = result.data[0].lastName;
      reg = result.data[0].regNumber;
      rollnumber = result.data[0].rollNumber.toString();
       print("66666666$rollnumber");
      dob = result.data[0].dob;
      parent = result.data[0].parent.toString();
      division = result.data[0].divisions.name;
      parents = result.data[0].parents.firstName;
      lparents = result.data[0].parents.lastName;
      classname = result.data[0].classname.name;
  }else{
    print("error");
  }}});
}
}

