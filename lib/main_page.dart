import 'package:flutter/material.dart';
import 'simple.dart';
import 'hard.dart';
class main_page extends StatefulWidget {
  @override
  _main_pageState createState() => _main_pageState();

}
class _main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Select Level",style: TextStyle(fontSize: 50,color: Colors.black),),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.only(right: 30),
                    child: FlatButton(onPressed: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>simple()));
                      });
                    }
                        , child: Text("Simple",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    margin: EdgeInsets.only(left: 35),
                    child: FlatButton(onPressed: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>hard()));
                      });
                    }
                        , child: Text("Hard",style: TextStyle(fontSize: 35,color: Colors.white),)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.only(left: 200,top: 300),
                    child: FlatButton(onPressed: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>about()));
                      });
                    }
                        , child: Text("ABOUT US",style: TextStyle(fontSize: 30,color: Colors.black),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: RaisedButton(onPressed: MainMenu,
                      child: Text('Exit Game'),
                    ),
                  ),
                ],
              ),

            ],
          ),
        )
    );
  }
}