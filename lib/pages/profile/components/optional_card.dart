import 'package:flutter/material.dart';

class OptionalCard extends StatefulWidget {
  @override
  _OptionalCardState createState() => _OptionalCardState();
}

class _OptionalCardState extends State<OptionalCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: <Widget>[
            Center(
              child: new CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: NetworkImage('http://www.wallpaper-box.com/cat/19201080/images/cat13.jpg')),
            )
          ],
        ),
      )
    );
  }
}