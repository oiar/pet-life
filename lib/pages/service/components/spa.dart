import 'package:flutter/material.dart';
import 'package:flutter_app/pages/service/components/article.dart';

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
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text('Near Your Location', style: TextStyle(fontSize: 20.0)),
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
                        margin: EdgeInsets.only(right: 8.0, bottom: 8.0, left: 16.0),
                        elevation: 5.0,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 280,
                              height: 150,
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
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12.0, left: 16.0, right: 16.0, bottom: 8.0),
                              child: new Text('Lovely Pet', style: TextStyle(fontSize: 20)),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
                              child: new Text('123 Avenue Street, City'),
                            ),
                          ],
                        ),
                      )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[ 
                        Card(
                          margin: EdgeInsets.only(left: 8.0, bottom: 8.0),
                          elevation: 5.0,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 280,
                                height: 150,
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
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12.0, left: 16.0, right: 16.0, bottom: 8.0),
                                child: new Text('The Pet Spa', style: TextStyle(fontSize: 20))
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
                                child: new Text('123 Avenue Street, City'),
                              ),
                            ],
                          ),
                        )
                      ]
                    )
                  ],
                )
              ),
              Column(
                children: [
                  Row(
                    children: <Widget>[
                      Container(
                        child: Text('Explore', style: TextStyle(fontSize: 20)),
                        margin: EdgeInsets.only(bottom: 16.0, top: 16.0, left: 16.0),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        elevation: 1.0,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                        child: Container(
                          height: 100,
                          width: 380,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 130,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(14.0),
                                    bottomLeft: Radius.circular(14.0)
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage('https://barkpost-assets.s3.amazonaws.com/wp-content/uploads/2013/03/fashion_is_pain-612x405.jpg'),
                                    fit: BoxFit.cover
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 16.0, top: 10.0, bottom: 10.0),
                                    child: Text(
                                      'Puppy Spa',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      '214 Casety Street, City',
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 16.0, top: 6.0),
                                    child: Text(
                                      '(84) 123 546 998',
                                    ),
                                  )
                                ]
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        margin: EdgeInsets.only(top: 16.0),
                        elevation: 1.0,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                        child: Container(
                          height: 100,
                          width: 380,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 130,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(14.0),
                                    bottomLeft: Radius.circular(14.0)
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage('http://g01.a.alicdn.com/kf/HTB1uvG9JFXXXXbbXXXXq6xXFXXX8/Yorkshire-Terrier-DIY-Puppy-Mural-Pet-shop-Spa-Grooming-Salon-font-b-Veterinary-b-font-wall.jpg'),
                                    fit: BoxFit.cover
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 16.0, top: 10.0, bottom: 10.0),
                                    child: Text(
                                      'Pet Spa & Retreat',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      '214 Casety Street, City',
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 16.0, top: 6.0),
                                    child: Text(
                                      '(84) 123 546 998',
                                    ),
                                  )
                                ]
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        margin: EdgeInsets.only(top: 16.0),
                        elevation: 1.0,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                        child: Container(
                          height: 100,
                          width: 380,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 130,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(14.0),
                                    bottomLeft: Radius.circular(14.0)
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage('https://images.adsttc.com/media/images/5012/e0f1/28ba/0d06/5800/02ff/large_jpg/stringio.jpg?1414028196'),
                                    fit: BoxFit.cover
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 16.0, top: 10.0, bottom: 10.0),
                                    child: Text(
                                      'Puppy Spa',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      '214 Casety Street, City',
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 16.0, top: 6.0),
                                    child: Text(
                                      '(84) 123 546 998',
                                    ),
                                  )
                                ]
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}