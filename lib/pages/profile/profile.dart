import 'package:flutter/material.dart';
import 'package:flutter_app/pages/profile/components/pet_cards.dart';
import 'package:flutter_app/pages/profile/components/reward.dart';

class ProfileScreen extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Container(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            bottom: false,
            child: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    title: Text('Profile', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 32.0, fontFamily: 'PatuaOne')),
                  )
                ];
              },
              body: new SingleChildScrollView(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      margin: EdgeInsets.all(16.0),
                      elevation: 3.0,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                      child: new Container(
                        height: 100,
                        child: Flex(
                          direction: Axis.horizontal,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: new Icon(Icons.portrait, size: 70, color: Color(0xFFffc542)),
                              )
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                margin: EdgeInsets.only(left: 8.0),
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: new Text('Sienna Lee', style: TextStyle(fontSize: 24, fontFamily: 'Signika'))
                                    ),
                                    Container(
                                      child: new Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 8.0),
                                            child: new Text('Edit profile', style: TextStyle(fontSize: 16)),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 8.0),
                                            child: new Icon(Icons.navigate_next),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            )
                          ],
                        )
                      ),
                    ),
                    Flex(
                      mainAxisAlignment: MainAxisAlignment.start,
                      direction: Axis.horizontal,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            margin: EdgeInsets.only(left: 16.0, top: 8.0),
                            child: new Text('Pet', style: TextStyle(fontSize: 24, fontFamily: 'Signika')),
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(top: 8.0),
                            child: new Icon(Icons.add_circle_outline, color: Color(0xFF646465), size: 32.0),
                          )
                        )
                      ],
                    ),
                    PetCards(),
                    Container(
                      child: Text('Your Reward', style: TextStyle(fontSize: 24, fontFamily: 'Signika')),
                      margin: EdgeInsets.only(bottom: 16.0, top: 24.0, left: 16.0),
                    ),
                    Reward()
                  ]
                )
              ),
            )
          ),
        )
      )
    );
  }
}