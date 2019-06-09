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
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              margin: EdgeInsets.only(bottom: 16.0),
              elevation: 5.0,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
              child: Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                child: CalendarCarousel(
                  weekFormat: false,
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
                  childAspectRatio: 1.5,
                  height: 300.0,
                  width: 330.0,
                ),
              )
            )
          ]
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              width: 380,
              margin: EdgeInsets.only(bottom: 14.0),
              child: Card(
                elevation: 1.0,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                      margin: EdgeInsets.only(left: 20.0, right: 15.0, top: 5.0, bottom: 5.0),
                      height: 80,
                      child: Center(
                        child: Text(
                          '10 May',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Color(0xFFF9C446), fontSize: 16.0)
                        )
                      )
                    ),
                    Container(
                      height: 80,
                      width: 160,
                      margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
                      child: Center(
                        child: Text(
                          calendarText,
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      margin: EdgeInsets.only(left: 20.0, right: 10.0, top: 5.0, bottom: 5.0),
                      child: Card(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                        color: Color(0xFFF9C446),
                        child: Center(
                          child: Text(
                            '9:00',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20.0)
                          )
                        ),
                      )
                    )
                  ]
                )
              )
            )
          ]
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 380,
              child: Card(
                elevation: 1.0,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                child: Row(
                  children:[
                    Container(
                      margin: EdgeInsets.only(left: 20.0, right: 15.0, top: 5.0, bottom: 5.0),
                      height: 80,
                      child: Center(
                        child: new Text(
                          '10 May',
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Color(0xFFF9C446), fontSize: 16.0)
                        )
                      )
                    ),
                    Container(
                      height: 80,
                      width: 160,
                      margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
                      child: Center(
                        child: Text(
                          calendarText,
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      margin: EdgeInsets.only(left: 20.0, right: 10.0, top: 5.0, bottom: 5.0),
                      child: Card(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                        color: Color(0xFFF9C446),
                        child: Center(
                          child: Text(
                            '15:00',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20.0)
                          )
                        ),
                      )
                    )
                  ]
                )
              )
            )
          ]
        )
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