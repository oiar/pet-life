import 'package:flutter/material.dart';

class PetCards extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<PetCards> {
  @override
  Widget build(BuildContext context) {
    final _showCard = () => Scaffold.of(context).showBottomSheet(
      (BuildContext context) => SizedBox(
        height: 300,
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 10.0,
              left: 10.0,
              right: 10.0,
              child: Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                ),
              ),
            ),
            Container(
              color: Colors.purple,
              height: 300,
              child: Center(
                child: Text(
                  "5",
                  style: TextStyle(fontSize: 50, color: Colors.white)
                ),
              ),
            ),
            Container(
              color: Colors.red,
              height: 100,
              width: MediaQuery.of(context).size.width * 2 / 3,
              child: Center(
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 50, color: Colors.white)
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Container(
                color: Colors.orange,
                width: MediaQuery.of(context).size.width * 1 / 3,
                height: 200,
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(fontSize: 50, color: Colors.white)
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Container(
                color: Colors.blue,
                width: MediaQuery.of(context).size.width * 2 / 3,
                height: 100,
                child: Center(
                  child: Text(
                    "3",
                    style: TextStyle(fontSize: 50, color: Colors.white)
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Container(
                color: Colors.green,
                height: 200,
                width: MediaQuery.of(context).size.width * 1 / 3,
                child: Center(
                  child: Text(
                    "4",
                    style: TextStyle(fontSize: 50, color: Colors.white)
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10.0,
              left: 10.0,
              right: 10.0,
              child: Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                ),
              ),
            ),
          ],
        ),
      )
    );
    return new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          child: Card(
            margin: EdgeInsets.only(right: 16.0, left: 20.0),
            elevation: 3.0,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(12.0),
                  width: 100,
                  height: 100,
                  child: new CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: NetworkImage('http://www.wallpaper-box.com/cat/19201080/images/cat13.jpg')),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: new Text('Mira', textAlign: TextAlign.center, style: TextStyle(fontSize: 16))
                )
              ],
            ),
          ),
          onTap: _showCard,
        ),
        Card(
          // margin: EdgeInsets.only(top: 20.0),
          elevation: 3.0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(12.0),
                width: 100,
                height: 100,
                child: new CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: NetworkImage('http://www.wallpaper-box.com/cat/images/cat24.jpg')),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                child: new Text('Min', textAlign: TextAlign.center, style: TextStyle(fontSize: 16))
              )
            ],
          ),
        )
      ],
    );
  }
}

class Fluttertoast {
}