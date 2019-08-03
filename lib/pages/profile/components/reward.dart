import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Reward extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<Reward> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0), right: ScreenUtil().setWidth(32.0)),
          elevation: 1.0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
          child: Container(
            height: ScreenUtil().setWidth(200),
            child: Flex(
              direction: Axis.horizontal,
              children:[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14.0),
                        bottomLeft: Radius.circular(14.0)
                      ),
                      image: DecorationImage(
                        image: AssetImage('lib/assets/images/puppy_spa.jpg'),
                        fit: BoxFit.cover
                      ),
                    ),
                  )
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Flex(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0), bottom: ScreenUtil().setWidth(20.0)),
                                child: Text(
                                  'Puppy Spa',
                                  style: TextStyle(fontSize: ScreenUtil().setSp(40)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0)),
                                child: Text(
                                  '214 Casety Street, City',
                                  style: TextStyle(fontSize: ScreenUtil().setSp(28)),
                                ),
                              ),
                            ]
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Container(
                              child: Center(child: Text('10%', style: TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(48)))),
                              height: ScreenUtil().setWidth(140),
                              decoration: BoxDecoration(color: Color(0xFFffc542), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), topRight: Radius.circular(14.0))),
                            )
                          )
                        )
                      ],
                    )
                  )
                ),
              ]
            )
          )
        ),
        Card(
          margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0), right: ScreenUtil().setWidth(32.0), top: ScreenUtil().setWidth(32.0)),
          elevation: 1.0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
          child: Container(
            height: ScreenUtil().setWidth(200),
            child: Flex(
              direction: Axis.horizontal,
              children:[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14.0),
                        bottomLeft: Radius.circular(14.0)
                      ),
                      image: DecorationImage(
                        image: AssetImage('lib/assets/images/mart.jpg'),
                        fit: BoxFit.cover
                      ),
                    ),
                  )
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Flex(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0), bottom: ScreenUtil().setWidth(20.0)),
                                child: Text(
                                  'Pet mart',
                                  style: TextStyle(fontSize: ScreenUtil().setSp(40)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0)),
                                child: Text(
                                  '214 Casety Street, City',
                                  style: TextStyle(fontSize: ScreenUtil().setSp(28)),
                                ),
                              ),
                            ]
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Container(
                              child: Center(child: Text('30%', style: TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(48)))),
                              height: ScreenUtil().setWidth(140),
                              decoration: BoxDecoration(color: Color(0xFFffc542), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), topRight: Radius.circular(14.0))),
                            )
                          )
                        )
                      ],
                    )
                  )
                ),
              ]
            )
          )
        ),
        Card(
          margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0), right: ScreenUtil().setWidth(32.0), top: ScreenUtil().setWidth(32.0)),
          elevation: 1.0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
          child: Container(
            height: ScreenUtil().setWidth(200),
            child: Flex(
              direction: Axis.horizontal,
              children:[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14.0),
                        bottomLeft: Radius.circular(14.0)
                      ),
                      image: DecorationImage(
                        image: AssetImage('lib/assets/images/stringio.jpg'),
                        fit: BoxFit.cover
                      ),
                    ),
                  )
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Flex(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0), bottom: ScreenUtil().setWidth(20.0)),
                                child: Text(
                                  'Beilystore',
                                  style: TextStyle(fontSize: ScreenUtil().setSp(40)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0)),
                                child: Text(
                                  '214 Casety Street, City',
                                  style: TextStyle(fontSize: ScreenUtil().setSp(28)),
                                ),
                              ),
                            ]
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Container(
                              child: Center(child: Text('20%', style: TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(48)))),
                              height: ScreenUtil().setWidth(140),
                              decoration: BoxDecoration(color: Color(0xFFffc542), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), topRight: Radius.circular(14.0))),
                            )
                          )
                        )
                      ],
                    )
                  )
                ),
              ]
            )
          )
        ),
      ],
    );
  }
}