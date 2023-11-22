import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: About(),
    debugShowCheckedModeBanner: false,
  ));
}

//stless
class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        //decoration: const BoxDecoration(
          //image: DecorationImage(
            //image: AssetImage("image/Screenshot_130.png"),
            //fit: BoxFit.cover,
          //),
        //),
        child: const Padding(
          padding: EdgeInsets.only(top: 30.0, left: 30),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  //CircleAvatar(radius: 40, backgroundImage: AssetImage('image/Screenshot_130.png'),),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Muksitul Islam", style: TextStyle(fontSize: 25, color: Colors.white , fontFamily: "Roboto"),),
                      Text("Devoloper", style: TextStyle(fontSize: 14,color: Colors.white,fontFamily: "Robotor"),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 40,),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.school, size: 30,color: Colors.lightGreenAccent,),
                        SizedBox(width: 15,),
                        Text("B.sc in CSE", style: TextStyle(fontSize: 18,color: Colors.white,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.note_add_rounded, size: 30,color: Colors.lightGreenAccent,),
                        SizedBox(width: 15,),
                        Text("Android Portfolio App", style: TextStyle(fontSize: 18,color:Colors.white,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_pin, size: 30,color: Colors.lightGreenAccent,),
                        SizedBox(width: 15,),
                        Text("Kishoreganj, Dhaka", style: TextStyle(fontSize: 18,color: Colors.white,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.email, size: 30,color: Colors.lightGreenAccent,),
                        SizedBox(width: 15,),
                        Text("muksitul15-3962@diu.edu.bd", style: TextStyle(fontSize: 18,color: Colors.white,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.phone, size: 30,color: Colors.lightGreenAccent,),
                        SizedBox(width: 15,),
                        Text("+8801717966468", style: TextStyle(fontSize: 18,color: Colors.white,fontFamily: "Robotor"),),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("Assalamu Alaikom. I am Muksitul Islam, you can call me by my nick name 'Jahin'. My father name is Mustufa kamal and my mother name is Jharna Begum. Now I am study in Daffodil International University in B.Sc in Computer Science and Engineering. ", style: TextStyle(fontSize: 14,color: Colors.white,fontFamily: "Robotor"),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
