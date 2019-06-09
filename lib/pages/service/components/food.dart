import 'package:flutter/material.dart';
import 'package:http/http.dart';

class FoodScreen extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: new SingleChildScrollView(
        child: FloatingActionButton(onPressed: () {
          fetchData();
        }),
      ),
    );
  }

  void fetchData() {
    get('https://jsonplaceholder.typicode.com/photos').then((result){
      print(result.body);
    });
  }
}