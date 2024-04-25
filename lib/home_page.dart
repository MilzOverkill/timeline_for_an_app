import 'package:flutter/material.dart';
import 'package:timeline_widget/components/my_timeline_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 50.0),
        child: ListView(
          children:  const [
      
      
            // start timeline
            MyTimeLineTile(
              isFirst: true, 
              isLast: false, 
              isPast: true,
              eventCard:Text('make a new flutter app'),
            ),
              
      
            //middle timeline
      
            MyTimeLineTile(
              isFirst: false, 
              isLast: false, 
              isPast: true,
              eventCard:Text('brush your teeth'),
            ),


            MyTimeLineTile(
              isFirst: false, 
              isLast: false, 
              isPast: true,
              eventCard:Text('hiiii'),
            ), 
              
      
            // end timeline
            MyTimeLineTile(
              isFirst: false, 
              isLast: true, 
              isPast: false,
              eventCard:Text('sleep'),
            ),


              
            
      
            
          ],
        ),
      ),
    );
  }
}