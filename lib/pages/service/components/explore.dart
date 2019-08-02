import 'package:flutter/material.dart';

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
            margin: EdgeInsets.only(left: 16.0, right: 16.0),
            elevation: 1.0,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
            child: Container(
              height: 80,
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
                          image: NetworkImage('https://barkpost-assets.s3.amazonaws.com/wp-content/uploads/2013/03/fashion_is_pain-612x405.jpg'),
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
                            margin: EdgeInsets.only(left: 16.0, bottom: 4.0),
                            child: Text(
                              'Puppy Spa',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16.0),
                            child: Text(
                              '214 Casety Street, City',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16.0, top: 2.0),
                            child: Text(
                              '(84) 123 546 998',
                              style: TextStyle(fontSize: 12),
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
          margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          elevation: 1.0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
          child: Container(
            height: 80,
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
                        image: NetworkImage('http://g01.a.alicdn.com/kf/HTB1uvG9JFXXXXbbXXXXq6xXFXXX8/Yorkshire-Terrier-DIY-Puppy-Mural-Pet-shop-Spa-Grooming-Salon-font-b-Veterinary-b-font-wall.jpg'),
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
                          margin: EdgeInsets.only(left: 16.0, bottom: 4.0),
                          child: Text(
                            'Pet Spa & Retreat',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16.0),
                          child: Text(
                            '214 Casety Street, City',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16.0, top: 2.0),
                          child: Text(
                            '(84) 123 546 998',
                            style: TextStyle(fontSize: 12),
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
          margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          elevation: 1.0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
          child: Container(
            height: 80,
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
                        image: NetworkImage('https://images.adsttc.com/media/images/5012/e0f1/28ba/0d06/5800/02ff/large_jpg/stringio.jpg?1414028196'),
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
                          margin: EdgeInsets.only(left: 16.0, bottom: 4.0),
                          child: Text(
                            'Puppy Spa',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16.0),
                          child: Text(
                            '214 Casety Street, City',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16.0, top: 2.0),
                          child: Text(
                            '(84) 123 546 998',
                            style: TextStyle(fontSize: 12),
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