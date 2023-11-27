import 'package:flutter/material.dart';

class Noticepage extends StatefulWidget {
  const Noticepage({super.key});

  @override
  State<Noticepage> createState() => _NoticepageState();
}

class _NoticepageState extends State<Noticepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 215, 215),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.red,
        title: Text('Notice',style: TextStyle(color: Colors.white),),
      ),body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            
            child: Padding(
              padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [Align(alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,top: 10),
                      child: Text('Title',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10,),
                    child: Align(alignment: Alignment.centerLeft,
                      child: Text('Programming Contest',style: TextStyle(
                        fontSize: 15,fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: Color.fromARGB(255, 184, 181, 181),
                    ),
                  ),Align(alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10),
                      child: Text('Description',style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    ),Padding(
                      padding: const EdgeInsets.only(top: 10,left: 10),
                      child: Text('The ACM International Collegiate Programming Contest (ICPC) is a multitier, team-based, programming competition operating under the Association for Computing Machinery (ACM). The contest involves a global network of universities hosting regional competitions that advance teams to the ACM-ICPC World Finals.'),
                    )
                  ],
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}