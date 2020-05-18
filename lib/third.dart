import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mybar extends StatefulWidget {
  @override
  _MybarState createState() => _MybarState();
}



class _MybarState extends State<Mybar> 
{
 

  @override
  Widget build(BuildContext context) 
  {
    return CustomScrollView(
  slivers: <Widget>[
    const SliverAppBar(
      pinned: true,
      expandedHeight: 150.0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('Demo',),
      ),
    ),
    SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 4.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.teal[100 * (index % 9)],
            child: Text("small tile",
            style: TextStyle(
              fontSize: 20
            ),
            )
          );
        },
        childCount: 20,
      ),
    ),

    SliverFixedExtentList
    (
      itemExtent: 60.0,
      delegate: SliverChildBuilderDelegate
      (
        (BuildContext context, int index)
         {
          return Container(
            alignment: Alignment.center,
            color: Colors.lightBlue[100 * (index % 9)],
            child: Text("tile",
            style: TextStyle(
              fontSize: 20,
            ),),
          );
        },
      ),
    ),
  ],
);

  }
}



