import 'package:flutter/material.dart';
import 'main_page.dart';
import 'dart:math';
int rold=1;
bool appre=true;
class hard extends StatefulWidget {
  @override
  _hardState createState() => _hardState();
}

class _hardState extends State<hard> {
  int dice=1;
  bool appre=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                height: 200,
                width: 200,
                child:FlatButton(onPressed: (){
                  setState(() {
                    rold=Random().nextInt(5)+1;
                    appre=false;
                  });
                },
                  child:disapre(),
                ) ,
              ),
            ],
          ),
        ),
        floatingActionButton:FloatingActionButton(
          onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>main_page()));
            });
          },
          child: Icon(Icons.keyboard_return_rounded),
          backgroundColor: Colors.black,
        )
    );
  }
  void showimage()
  {  if(appre=false)	  {
    {	     Image(image: AssetImage('images/dice5.jpg')) ;
    return Container(	  }
    color: Colors.grey,	 }

  }
  }
}