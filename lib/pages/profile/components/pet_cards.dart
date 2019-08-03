import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            margin: EdgeInsets.only(right: ScreenUtil().setWidth(32.0), left: ScreenUtil().setWidth(40.0), top: ScreenUtil().setWidth(32.0)),
            elevation: 3.0,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(ScreenUtil().setWidth(24.0)),
                  width: ScreenUtil().setWidth(200),
                  height: ScreenUtil().setWidth(200),
                  child: CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: AssetImage('lib/assets/images/mira.jpg')),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)),
                  child: Text('Mira', textAlign: TextAlign.center, style: TextStyle(fontSize: ScreenUtil().setSp(32)))
                )
              ],
            ),
          ),
          onTap: () {
            showAlertDialog(context);
          },
        ),
        Card(
          margin: EdgeInsets.only(top: ScreenUtil().setWidth(32.0)),
          elevation: 3.0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(ScreenUtil().setWidth(24.0)),
                width: ScreenUtil().setWidth(200),
                height: ScreenUtil().setWidth(200),
                child: CircleAvatar(backgroundColor: Colors.white, radius: 100, backgroundImage: AssetImage('lib/assets/images/min.jpg')),
              ),
              Container(
                margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(32.0)),
                child: Text('Min', textAlign: TextAlign.center, style: TextStyle(fontSize: ScreenUtil().setSp(32)))
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
          height: ScreenUtil().setHeight(800),
          child: OptionalCard()
        )
      )
    ); 
  }
}