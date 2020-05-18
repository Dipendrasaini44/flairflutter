import 'package:flutter/material.dart';


class Toolltip extends StatefulWidget {
  @override
  _ToolltipState createState() => _ToolltipState();
}

class _ToolltipState extends State<Toolltip> 
{
   List <bool> isSelected = List.generate(3, (index) => false);
//    Future<TimeOfDay> selectedTime = showTimePicker(
//    initialTime: TimeOfDay.now(),
//    context: context,
// ),

  @override
  Widget build(BuildContext context)
   {
    return Scaffold(
      body: Center(child:Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Tooltip(
      message: 'High quality',
      child: IconButton(
        icon: Icon(Icons.high_quality),
        onPressed: () {
          /** */
        },
      ),
    ),
    Tooltip(
      message: 'Full screen',
      child: IconButton(
        icon: Icon(Icons.fullscreen),
        onPressed: () {
          /** */
        },
      ),
    ),
    Tooltip(
      message: 'Filter',
      child: IconButton(
        icon: Icon(Icons.filter),
        onPressed: () {
          /** */
        },
      ),
    ),
    ToggleButtons(
  children: <Widget>[
    Icon(Icons.ac_unit),
    Icon(Icons.call),
    Icon(Icons.cake),
  ],
  onPressed: (int index) 
  {
    setState(() {
      isSelected[index] = !isSelected[index];
    });
  },
  isSelected: isSelected,
),

          
        ],
      ),

      ) ,)   
    );
      
    
  }
}

