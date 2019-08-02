import 'package:flutter/material.dart';
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
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text('Near Your Location', style: TextStyle(fontSize: 18.0, fontFamily: 'PatuaOne')),
                    margin: EdgeInsets.only(bottom: 16.0, top: 10.0, left: 16.0),
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
                        margin: EdgeInsets.only(right: 16.0, bottom: 20.0, left: 16.0),
                        elevation: 5.0,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                        child: Container(
                          width: 230,
                          height: 180,
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
                                      margin: EdgeInsets.only(top: 8.0, left: 16.0),
                                      child: new Text('Lovely Pet', style: TextStyle(fontSize: 16)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 16.0, top: 2.0),
                                      child: new Text('123 Avenue Street, City', style: TextStyle(fontSize: 12),),
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
                        margin: EdgeInsets.only(bottom: 20.0),
                        elevation: 5.0,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                        child: Container(
                          width: 230,
                          height: 180,
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
                                      margin: EdgeInsets.only(top: 8.0, left: 16.0),
                                      child: new Text('The Pet Spa', style: TextStyle(fontSize: 16)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 16.0, top: 2.0),
                                      child: new Text('123 Avenue Street, City', style: TextStyle(fontSize: 12),),
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
                child: Text('Explore', style: TextStyle(fontSize: 18, fontFamily: 'PatuaOne')),
                margin: EdgeInsets.only(bottom: 16.0, left: 16.0),
              ),
              Explore()
            ],
          ),
        ),
      ),
    );
  }
}