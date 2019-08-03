import 'package:flutter/material.dart';
import 'package:flutter_app/splash_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_app/pages/service/components/explore.dart';

class SpaScreen extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<SpaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text('Near Your Location', style: TextStyle(fontSize: ScreenUtil().setSp(48.0), fontFamily: 'Signika')),
                    margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0), top: ScreenUtil().setWidth(20.0), left: ScreenUtil().setWidth(32.0)),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/article');
                      },
                      child: Card(
                        margin: EdgeInsets.only(right: ScreenUtil().setWidth(32.0), bottom: ScreenUtil().setWidth(16.0), left: ScreenUtil().setWidth(32.0)),
                        elevation: 5.0,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                        child: Container(
                          width: ScreenUtil().setWidth(560),
                          height: ScreenUtil().setWidth(440),
                          child: Flex(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            direction: Axis.vertical,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0)
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage('http://s3img.city.sina.com.cn/xiancheng/common/thumbnail/0/21b3f53872990991ba229acb4dc4ffc5.jpg'),
                                      fit: BoxFit.cover
                                    ),
                                  ),
                                )
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Container(
                                      margin: EdgeInsets.only(top: ScreenUtil().setWidth(24.0), left: ScreenUtil().setWidth(32.0), bottom: ScreenUtil().setWidth(16.0)),
                                      child: new Text('Lovely Pet', style: TextStyle(fontSize: ScreenUtil().setSp(40.0))),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0)),
                                      child: new Text('123 Avenue Street, City'),
                                    )
                                  ]
                                )
                              )
                            ],
                          ),
                        )
                      )
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/article');
                      },
                      child: Card(
                        margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(16.0)),
                        elevation: 5.0,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                        child: Container(
                          width: ScreenUtil().setWidth(560),
                          height: ScreenUtil().setWidth(440),
                          child: Flex(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            direction: Axis.vertical,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0)
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage('http://www.myhomedecor.org/wp-content/uploads/Mini-DIY-Bed-for-lovely-pets-616x350.jpg'),
                                      fit: BoxFit.cover
                                    ),
                                  ),
                                )
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Container(
                                      margin: EdgeInsets.only(top: ScreenUtil().setWidth(24.0), left: ScreenUtil().setWidth(32.0), bottom: ScreenUtil().setWidth(16.0)),
                                      child: new Text('The Pet Spa', style: TextStyle(fontSize: ScreenUtil().setSp(40.0))),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: ScreenUtil().setWidth(32.0)),
                                      child: new Text('123 Avenue Street, City'),
                                    )
                                  ]
                                )
                              )
                            ],
                          ),
                        )
                      )
                    ),
                  ],
                )
              ),
              Container(
                child: Text('Explore', style: TextStyle(fontSize: ScreenUtil().setSp(48.0), fontFamily: 'Signika')),
                margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0), top: ScreenUtil().setWidth(32.0), left: ScreenUtil().setWidth(32.0)),
              ),
              Explore()
            ],
          ),
        ),
      ),
    );
  }
}