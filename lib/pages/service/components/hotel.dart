import 'package:flutter/material.dart';

class HotelScreen extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: new SingleChildScrollView(
        child: StreamBuilder(
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Text(
                '1 Minute Completed',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Text(
                'Waiting For Stream',
                style: TextStyle(
                  fontSize: 30.0
                ),
              );
            }
            return Text(
              '00:${snapshot.data.toString().padLeft(2,'0')}',
              style: TextStyle(
                fontSize: 30.0
              )
            );
          },
          initialData: 0,
          stream: _stream(),
        ),
      ),
    );
  }

  Stream<int> _stream() {
    Duration interval = Duration(seconds: 1);
    Stream<int> stream = Stream<int>.periodic(interval, transform);
    stream = stream.take(59);
    return stream;
  }

  int transform(int value) {
    return value;
  }
}