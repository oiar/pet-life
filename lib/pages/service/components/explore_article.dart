import 'package:flutter/material.dart';

class ExploreArticle extends StatefulWidget {
  @override
  Screen createState() => Screen();
}
class Screen extends State<ExploreArticle> {
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
            children: <Widget>[
              Stack(
                alignment: Alignment(-1.0, -0.6),
                children: [
                  Container(
                    height: 230,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://barkpost-assets.s3.amazonaws.com/wp-content/uploads/2013/03/fashion_is_pain-612x405.jpg'),
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
            ],
          ),
        )
      ),
    );
  }
}