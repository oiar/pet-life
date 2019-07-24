import 'package:flutter/material.dart';

class OptionalCard extends StatefulWidget {
  @override
  _OptionalCardState createState() => _OptionalCardState();
}

class _OptionalCardState extends State<OptionalCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(bottom: 32.0),
            child: CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: NetworkImage('http://www.wallpaper-box.com/cat/19201080/images/cat13.jpg')),
          )
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: 16.0), child: Text('Name')),
            ),
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: 16.0), child: Text('Min')),
            )
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: 16.0), child: Text('Species')),
            ),
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: 16.0), child: Text('Cat')),
            )
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: 16.0), child: Text("Pet's birthday")),
            ),
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: 16.0), child: Text('16 March 2019')),
            )
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: 16.0), child: Text('Weight')),
            ),
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: 16.0), child: Text('6 kg')),
            )
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: 16.0), child: Text('Current health issues')),
            ),
            Expanded(
              flex: 1,
              child: Container(margin: EdgeInsets.only(bottom: 16.0), child: Text('Allergies, Skin Allergies')),
            )
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(child: Text('Hobbies')),
            ),
            Expanded(
              flex: 1,
              child: Container(child: Text('Play with ball')),
            )
          ],
        ),
      ],
    );
  }
}