import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class ArticleScreen extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Scaffold(
      backgroundColor: Color(0xFFFEF1D4),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment(-1.0, -0.6),
                children: [
                  Container(
                    height: 230,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('http://s3img.city.sina.com.cn/xiancheng/common/thumbnail/0/21b3f53872990991ba229acb4dc4ffc5.jpg'),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.navigate_before, color: Colors.white, size: 36.0),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ),
                ]
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 8.0),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text('Lovely Pet', style: TextStyle(fontSize: 26)),
                    ),
                    Flex(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      direction: Axis.horizontal,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.only(top: 10.0),
                            child: Text('123 Avenue Street, City', style: TextStyle(fontSize: 16)),
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 8.0),
                            child: FlatButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
                              onPressed: () {},
                              color: Color(0xFFf9c446),
                              child: Text('Book', style: TextStyle(color: Colors.white, fontSize: 16),),
                            ),
                          )
                        )
                      ]
                    ),
                  ]
                )
              ),
              Card(
                margin: EdgeInsets.all(16.0),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                child: Container(
                  width: width * 12 / 13,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text('Hours', style: TextStyle(fontSize: 22.0),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16.0, left: 16.0),
                        child: Text('Monday-Friday 9AM-7PM*', style: TextStyle(fontSize: 16.0),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14.0, left: 16.0),
                        child: Text('Saturdays 9AM to 6PM*', style: TextStyle(fontSize: 16.0),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14.0, left: 16.0, bottom: 8.0),
                        child: Text('Sundays 10AM to 5PM*', style: TextStyle(fontSize: 16.0),)
                      )
                    ],
                  ),
                )
              ),
              Card(
                margin: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                child: Container(
                  width: width * 12 / 13,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text('Service', style: TextStyle(fontSize: 22.0),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16.0, left: 16.0),
                        child: Text('Pet Grooming', style: TextStyle(fontSize: 16.0),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14.0, left: 16.0),
                        child: Text('Pet sitting and walking', style: TextStyle(fontSize: 16.0),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14.0, left: 16.0, bottom: 8.0),
                        child: Text('Pet Spa and Bathing option', style: TextStyle(fontSize: 16.0),)
                      )
                    ],
                  ),
                )
              ),
              Card(
                margin: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
                child: Container(
                  width: width * 12 / 13,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              padding: EdgeInsets.all(16.0),
                              child: Text('Location', style: TextStyle(fontSize: 22.0)),
                            )
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Icon(Icons.search, size: 32.0, color: Color(0xFF646465)),
                            )
                          )
                        ]
                      ),
                      SizedBox(
                        height: 300,
                        child: FlutterMap(
                          options: new MapOptions(
                            center: LatLng(51.5, -0.09),
                            zoom: 13.0,
                          ),
                          layers: [
                            new TileLayerOptions(
                              urlTemplate: "https://api.mapbox.com/styles/v1/oiar/cjxzxij1c0sks1cp9umiqujji/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoib2lhciIsImEiOiJjanh6dHF2bWkwNnAxM2JsYnEwYTgxM3g2In0.Zaiik1gIW6jntv0D1c_L-w",
                              additionalOptions: {
                                'accessToken': 'https://api.mapbox.com/styles/v1/oiar/cjxzxij1c0sks1cp9umiqujji/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoib2lhciIsImEiOiJjanh6dHF2bWkwNnAxM2JsYnEwYTgxM3g2In0.Zaiik1gIW6jntv0D1c_L-w',
                              },
                            ),
                            new MarkerLayerOptions(
                              markers: [
                                new Marker(
                                  width: 80.0,
                                  height: 80.0,
                                  point: new LatLng(51.5, -0.09),
                                  builder: (ctx) =>
                                  new Container(
                                    child: Icon(Icons.location_on, size: 40.0, color: Color(0xFFf9c446)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ]
          )
        )
      )
    );
  }
}
