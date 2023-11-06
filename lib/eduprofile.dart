import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 231, 231),
      drawer: Drawer(),
      appBar: AppBar(centerTitle: true,
        backgroundColor: Color.fromARGB(255, 248, 20, 3),
        title: Text('EDUMEET',),
        actions: [IconButton(onPressed: (){}, icon:Icon(Icons.chat))],
      ),body: ListView(
        children: [
          ClipRect(
            child: Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(
                MediaQuery.of(context).size.width, 100.0)),           
                color: Colors.red),      
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20,top: 85,),
                    height: 350,
                    width: double.infinity,
                    child: Card(                 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)
                      ),child: Column(children: [
                        Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Text('Kiran RV',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20),),                 
                      ),Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text('Reg.No:1234',style: TextStyle(
                          color: Colors.black45
                        ),),
                      ),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Expanded(
                          child: Column(                       
                            children: [Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text('Class-4',style: TextStyle(color: Colors.black45),),
                            ),
                            SizedBox(height: 15,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('Roll No-12',style: TextStyle(color: Colors.black45),),
                            ),SizedBox(height: 15,)
                            ]),
                        ),
                       Container(height: 40,
                        width: 2,color:Colors.black45,),
                        Expanded
                      (
                          child: Column(
                              children: [Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text('Division-A',style: TextStyle(color: Colors.black45)),
                              ),SizedBox(height: 15,),
                              Text('DOB-04-08-2002',style: TextStyle(color: Colors.black45),),
                              SizedBox(height: 15,)
                              ],
                            ),
                        )
                        ],),],
                      ),  
                    ), ),
                   
                  Positioned(top: 35,left: 0,right:0,
                    child: CircleAvatar(radius: 52,
                      child: CircleAvatar(
                       backgroundImage: AssetImage('assets /images/edumeet3.jpg'),
                        radius: 50,),
                    ),                
                  ),
                  Positioned(bottom: 75,left: 0,right: 0,
                    child: CircleAvatar(radius: 32,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets /images/edumeet4.png'),
                        radius: 30,
                      ),
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(50.0),
                     child: Align(alignment: Alignment.bottomCenter,
                       child: Text('Madhu PK',style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(30.0),
                     child: Align(alignment: Alignment.bottomCenter,
                      child: Text('Parent',style: TextStyle(fontSize: 15,color: Colors.white),)),
                   )
                ],
              ),
            ),
          ),Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(60, 118, 138, 60)
            ),child: Card(
                child: Column(
                  children: [
                    Align(alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text('Notice',style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),Text('Programming ')
                    
                  ],
                ),
              
            ),
            )
        ],
      ),
    );
  }
}