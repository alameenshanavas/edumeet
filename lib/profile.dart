import 'package:flutter/material.dart';

class proscreen extends StatelessWidget {
  const proscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 227, 225, 225),
      body: ListView(
        children: [
          Stack(
  children: [
    Container(  
      child:Align(alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(top: 15,left: 10),
          child: InkWell(onTap: (){
            Navigator.pop(context);
 },
            child: Icon(Icons.arrow_back,color: Colors.white,size: 25,)),         
        ),
        ),
        
     height: 150,
     width: double.infinity,
     color: Colors.red),
  Padding(
   padding: const EdgeInsets.only(top: 100),
   child: Align(
   alignment: Alignment.bottomCenter,
     child: CircleAvatar(
      radius: 50,
      child: CircleAvatar(
        backgroundImage: AssetImage('assets /images/edumeet3.jpg'),
        radius: 48,
        child: Align(alignment: Alignment.bottomRight,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 15,
            child: Icon(Icons.add_a_photo,
            size: 18,
            color: Colors.black87,),
          ),
        ),
      ),
     ),
   ),
 ),
  ]
),
Center(
  child: Column(
    children: [Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        children: [Padding(
          padding: const EdgeInsets.only(left: 145),
          child: Text('Kiran RV',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17
              ),),
        ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Icon(Icons.edit),
      )
      ],
      ),
    ),Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text('Reg No:12345'),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40)
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                radius: 25,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets /images/edumeet4.png'),
                  radius: 23,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,bottom: 13,top: 13),
              child: Column(
                children: [
                  Text('Madhu PK',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15),),
                    Padding(
                      padding: const EdgeInsets.only(top: 2,right: 27),
                      child: Text('Parent'),
                    )
                ],
              ),
            ),
          ],
        )
      ),
    ),Padding(
      padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
      child: Container(
        height:450,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
        ),
         child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Gender'),
              Text('Class'),
              Text('Division'),
              Text('Roll No'),
              Text('DOB'),
              Text('Phone')
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(': male'),
              Text(': 4'),
              Text(': A'),
              Text(': 12'),
              Text(': 10-5-2002'),
              Text(': +91-9876543210')
            ],
          )
          ],
        ),
       
      ),
    )
    ],
  ),
),
Padding(
  padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
  child:   Container(
    height: 500,
    width:double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      
    ), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email'),
              Text('Secondary Phone'),
              Text('Address'),
              Text('Place'),
              Text('Post Code'),
              Text('Blood Group'),
              Text('State'),
              Text('Country')
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(': students@irohub.com'),
              Text(': +91-8086740064'),
              Text(': 1st Floor,Trust Building'),
              Text(': Ernakulam'),
              Text(': 778787'),
              Text(': B+'),
              Text(': Kerala'),
              Text(': India')
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
}