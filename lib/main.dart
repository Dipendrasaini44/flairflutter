import 'package:flutter/material.dart';
import 'package:newproject/skew.dart';
import 'package:newproject/tooltip.dart';

import 'third.dart';

import 'skew.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Toolltip(),

    );
  }
}

class Myhome extends StatefulWidget {
  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> 
{
  bool istrue =true;

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(

      body:Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children :<Widget>[
          AnimatedCrossFade
        (
          firstChild: FlutterLogo
          (
          style: FlutterLogoStyle.horizontal,
          size: 300.0,
          )
         , secondChild: FlutterLogo(
           style: FlutterLogoStyle.stacked,
           size: 300.0,
         ),
         crossFadeState:istrue ? CrossFadeState.showFirst : CrossFadeState.showSecond, 
         duration: Duration(milliseconds: 1000),
        ),

        SizedBox(
          height:20
        ),
        Container(
          height: 40,
          width: 40,
          color: Colors.greenAccent,
          child: IconButton(icon: Icon(Icons.play_arrow,color: Colors.blueAccent,),
           onPressed: (){
             setState(() {
               if(istrue ==true)
               {
                 istrue=false;
                 print("hi");
               }
               else{
                 istrue =true;
                 print("hello");
               }
             });
           }),
        )
        ], 
      )),

    );
      
    
  }
}

