import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Explore extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/explore_article');
          },
          child: Card(
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0), bottom: ScreenUtil().setWidth(20.0)),
                            child: Text(
                              'Puppy Spa',
                              style: TextStyle(fontSize: ScreenUtil().setSp(40.0)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0)),
                            child: Text(
                              '214 Casety Street, City',
                              style: TextStyle(fontSize: ScreenUtil().setSp(28.0)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0), top: ScreenUtil().setWidth(12.0)),
                            child: Text(
                              '(84) 123 546 998',
                              style: TextStyle(fontSize: ScreenUtil().setSp(28.0)),
                            ),
                          )
                        ]
                      )
                    )
                  )
                ]
              )
            )
          ),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0), bottom: ScreenUtil().setWidth(20.0)),
                          child: Text(
                            'Pet Spa & Retreat',
                            style: TextStyle(fontSize: ScreenUtil().setSp(40.0)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0)),
                          child: Text(
                            '214 Casety Street, City',
                            style: TextStyle(fontSize: ScreenUtil().setSp(28.0)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16.0, top: ScreenUtil().setWidth(12.0)),
                          child: Text(
                            '(84) 123 546 998',
                            style: TextStyle(fontSize: ScreenUtil().setSp(28.0)),
                          ),
                        )
                      ]
                    )
                  )
                )
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
                        image: AssetImage('lib/assets/images/puppy_spa.jpg'),
                        fit: BoxFit.cover
                      ),
                    ),
                  )
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0), bottom: ScreenUtil().setWidth(20.0)),
                          child: Text(
                            'Puppy Spa',
                            style: TextStyle(fontSize: ScreenUtil().setSp(40.0)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0)),
                          child: Text(
                            '214 Casety Street, City',
                            style: TextStyle(fontSize: ScreenUtil().setSp(28.0)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0), top: ScreenUtil().setWidth(12.0)),
                          child: Text(
                            '(84) 123 546 998',
                            style: TextStyle(fontSize: ScreenUtil().setSp(28.0)),
                          ),
                        )
                      ]
                    )
                  )
                )
              ]
            )
          )
        ),
      ],
    );
  }
}