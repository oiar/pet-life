import 'package:flutter/material.dart';
import 'package:flutter_app/pages/profile/components/optional_card.dart';

class PetCards extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<PetCards> {
  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          child: Card(
            margin: EdgeInsets.only(right: 16.0, left: 20.0, top: 16.0),
            elevation: 3.0,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(12.0),
                  width: 100,
                  height: 100,
                  child: CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: NetworkImage('http://www.wallpaper-box.com/cat/19201080/images/cat13.jpg')),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: Text('Mira', textAlign: TextAlign.center, style: TextStyle(fontSize: 16))
                )
              ],
            ),
          ),
          onTap: () {
            showAlertDialog(context);
          },
        ),
        Card(
          margin: EdgeInsets.only(top: 16.0),
          elevation: 3.0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(12.0),
                width: 100,
                height: 100,
                child: CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: NetworkImage('http://www.wallpaper-box.com/cat/images/cat24.jpg')),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                child: Text('Min', textAlign: TextAlign.center, style: TextStyle(fontSize: 16))
              )
            ],
          ),
        )
      ],
    );
  }
  void showAlertDialog(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
        content: Container(
          width: width,
          height: height * 2 / 5,
          child: OptionalCard()
        )
      )
    ); 
  }
}