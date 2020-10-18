import 'package:flutter/material.dart';
import 'package:flutter_app/pages/profile/components/pet_cards.dart';
import 'package:flutter_app/pages/profile/components/reward.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_app/pages/profile/components/add_bottom_sheet.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

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
              physics: BouncingScrollPhysics(),
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    title: Text('Profile', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: ScreenUtil().setSp(72), fontFamily: 'PatuaOne')),
                  )
                ];
              },
              body: new SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/edit_profile');
                      },
                      child: Card(
                        margin: EdgeInsets.all(ScreenUtil().setWidth(32.0)),
                        elevation: 3.0,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                        child: new Container(
                          height: ScreenUtil().setWidth(200),
                          child: Flex(
                            direction: Axis.horizontal,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Center(
                                  child: Container(
                                    height: ScreenUtil().setWidth(154),
                                    width: ScreenUtil().setWidth(154),
                                    // padding: EdgeInsets.all(ScreenUtil().setWidth(24.0)),
                                    child: CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: AssetImage('lib/assets/images/mira.jpg'),),
                                  )
                                )
                              ),
                              Expanded(
                                flex: 11,
                                child: Container(
                                  margin: EdgeInsets.only(left: ScreenUtil().setWidth(16.0)),
                                  child: new Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: new Text('Sienna Lee', style: TextStyle(fontSize: ScreenUtil().setSp(52), fontFamily: 'Signika'))
                                      ),
                                      Container(
                                        child: new Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: ScreenUtil().setWidth(8.0)),
                                              child: new Text('Edit profile', style: TextStyle(fontSize: ScreenUtil().setSp(36))),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: ScreenUtil().setWidth(10.0)),
                                              child: new Icon(Icons.navigate_next, size: 26.0,),
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
                      )
                    ),
                    Flex(
                      mainAxisAlignment: MainAxisAlignment.start,
                      direction: Axis.horizontal,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0), top: ScreenUtil().setWidth(16.0)),
                            child: new Text('Pet', style: TextStyle(fontSize: ScreenUtil().setSp(48), fontFamily: 'Signika')),
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0)),
                            child: AddBottomSheet(),
                          )
                        )
                      ],
                    ),
                    PetCards(),
                    Container(
                      child: Text('Your Reward', style: TextStyle(fontSize: ScreenUtil().setSp(48), fontFamily: 'Signika')),
                      margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0), top: ScreenUtil().setWidth(48.0), left: ScreenUtil().setWidth(32.0)),
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