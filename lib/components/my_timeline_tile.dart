import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:timeline_widget/components/event_card.dart';

class MyTimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;

  const MyTimeLineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.eventCard,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //gap between the events
      height: 200,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,

        //decorate the lines

        beforeLineStyle:
            LineStyle(color: isPast ? Colors.deepPurple : Colors.pinkAccent),

        // decorate the icon

        indicatorStyle: IndicatorStyle(
            width: 30,
            color: isPast ? Colors.deepPurple : Colors.pinkAccent,
            iconStyle: IconStyle(
              iconData: Icons.done,
              color: isPast ? Colors.white : Colors.deepPurpleAccent,
            ),
          ),

        //event card

        endChild: EventCard(
          isPast: isPast,
          child: eventCard, // Create a Text widget with the eventCard text
        ),
      ),
    );
  }
}
