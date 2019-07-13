import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class IconBottomSheet extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<IconBottomSheet> {
  DateTime date;
  final formats = {
    InputType.both: DateFormat("EEEE, MMM d"),
    InputType.date: DateFormat("EEEE, MMM d"),
    InputType.time: DateFormat("HH:mm"),
  };

  @override
  Widget build(BuildContext context) {
    return new IconButton(
      icon: Icon(Icons.add_circle_outline, size: 32.0, color: Color(0xFF646465)),
      onPressed: () => {
        showModalBottomSheet<String>(
          context: context,
          builder: (BuildContext context) => Container(
            color: Colors.white,
            padding: EdgeInsets.only(right: 36.0, left: 36.0),
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 8.0),
                      child: FlatButton(
                        child: const Icon(Icons.navigate_before, size: 36.0, color: Color(0xFFcfcfcf),),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8.0),
                      child: Text('Add schedule', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                    )
                  ]
                ),
                Container(
                  margin: EdgeInsets.only(top: 8.0),
                  child: Text('Date', style: TextStyle(fontSize: 20)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8.0),
                  child: DateTimePickerFormField(
                    textAlign: TextAlign.center,
                    editable: false,
                    onChanged: (dt) => setState(() => date = dt),
                    inputType: InputType.date,
                    format: formats[InputType.date],
                    decoration: InputDecoration(
                      icon: Icon(Icons.date_range, size: 32),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFFfef7ec), width: 0.0),
                        borderRadius: const BorderRadius.all(Radius.circular(50.0))
                      ),
                      filled: true,
                      fillColor: Color(0xFFfef7ec),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8.0),
                  child: Text('Time', style: TextStyle(fontSize: 20)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8.0),
                  child: DateTimePickerFormField(
                    controller: TextEditingController(),
                    textAlign: TextAlign.center,
                    onChanged: (dt) => setState(() => date = dt),
                    inputType: InputType.time,
                    format: formats[InputType.time],
                    decoration: const InputDecoration(
                      icon: Icon(Icons.timer, size: 32),
                      filled: true,
                      fillColor: Color(0xFFfef7ec),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFFfef7ec), width: 0.0),
                        borderRadius: const BorderRadius.all(Radius.circular(50.0))
                      ),
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 8.0),
                  child: Text('Note', style: TextStyle(fontSize: 20)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8.0),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFfef7ec),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFFfef7ec), width: 0.0),
                      ),
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Container(
                    height: 46.0,
                    padding: EdgeInsets.only(left: 80.0, right: 80.0),
                    child: FlatButton(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                      onPressed: () {},
                      color: Color(0xFFf9c446),
                      child: Text('Add', style: TextStyle(color: Colors.white, fontSize: 20),),
                    )
                  )
                )
              ],
            ),
          ),
        ),
      },
    );
  }
  
}