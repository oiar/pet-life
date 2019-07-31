import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';

class CalenderScreen extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<CalenderScreen> {
  static String noEventText = "No event here";
  String calendarText = noEventText;

  @override
  void initState() {
    _markedDateMap.add(
      new DateTime(2019, 5, 22),
      new Event(
        date: new DateTime(2019, 5, 22),
        title: 'Event 5',
      )
    );
    _markedDateMap.add(
      new DateTime(2019, 5, 10),
      new Event(
        date: new DateTime(2019, 5, 10),
        title: 'Event 4',
      )
    );
    _markedDateMap.addAll(new DateTime(2019, 5, 11),[
      new Event(
        date: new DateTime(2019, 5, 11),
        title: 'Event 1',
      ),
      new Event(
        date: new DateTime(2019, 5, 11),
        title: 'Event 2',
      ),
      new Event(
        date: new DateTime(2019, 5, 11),
        title: 'Event 3',
      )
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Column(
      children: [
        Card(
          elevation: 5.0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
          child: Container(
            width: width * 10 / 11,
            padding: EdgeInsets.only(left: 32.0, right: 32.0, bottom: 16.0),
            child: CalendarCarousel(
              headerMargin: EdgeInsets.only(top: 16.0, bottom: 8.0),
              markedDatesMap: _markedDateMap,
              onDayPressed: (DateTime date, List<Event> events) {
                this.setState(() => refresh(date));
              },
              weekdayTextStyle: TextStyle(
                color: Color(0xFFF9C446)
              ),
              weekendTextStyle: TextStyle(
                color: Colors.black
              ),
              iconColor: Color(0xFFF9C446),
              todayButtonColor: Color(0xFFF9C446),
              headerTextStyle: TextStyle(
                color: Color(0xFFF9C446),
                fontSize: 20
              ),
              height: 320.0,
              width: 300.0,
            ),
          )
        ),
        Card(
          margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          elevation: 1.0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
          child: Container(
            height: 90,
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Text(
                        '10 May',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xFFF9C446), fontSize: 16.0)
                      )
                    )
                  )
                ),
                Expanded(
                  flex: 2,
                    child: Container(
                    margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
                    child: Text(
                      calendarText,
                    ),
                  )
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    margin: EdgeInsets.only(right: 16.0, left: 8.0),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                    color: Color(0xFFF9C446),
                    child: Container(
                      width: 70,
                      height: 70,
                      child: Center(
                        child: Text(
                          '9:00',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20.0)
                        )
                      )
                    ),
                  )
                )
              ]
            )
          )
        ),
        Card(
          margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          elevation: 1.0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
          child: Container(
            height: 90,
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Text(
                        '10 May',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xFFF9C446), fontSize: 16.0)
                      )
                    )
                  )
                ),
                Expanded(
                  flex: 2,
                    child: Container(
                    margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
                    child: Text(
                      calendarText,
                    ),
                  )
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    margin: EdgeInsets.only(right: 16.0, left: 8.0),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                    color: Color(0xFFF9C446),
                    child: Container(
                      width: 70,
                      height: 70,
                      child: Center(
                        child: Text(
                          '15:00',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20.0)
                        )
                      )
                    ),
                  )
                )
              ]
            )
          )
        ),
      ]
    );
  }

  void refresh(DateTime date) {
    print('selected date' + 
      date.day.toString() +
      date.month.toString() +
      ' ' +
      date.toString()
    );
    if(_markedDateMap.getEvents(new DateTime(date.year, date.month, date.day)).isNotEmpty) {
      calendarText = _markedDateMap
        .getEvents(new DateTime(date.year, date.month, date.day))[0]
        .title;
      // calendarDate = _markedDateMap
      //   .getEvents(new DateTime(date.day, date.month, date.day))[0]
      //   .date;
    } else {
      calendarText = noEventText;
    }
  }
}

EventList<Event> _markedDateMap = new EventList<Event>(events: {
  new DateTime(2019, 5, 23): [
    new Event(
      date: new DateTime(2019, 5, 23),
      title: 'lalala',
    )
  ]
});