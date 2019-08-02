import 'package:flutter/material.dart';
import 'bottom_navigation.dart';
import 'package:flutter_app/splash_widget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RestartWidget(
      child: MaterialApp(
        theme: ThemeData(backgroundColor: Colors.white),
        home: Scaffold(
          resizeToAvoidBottomPadding: false,
          body: SplashWidget(),
        ),
      )
    );
    // return new MaterialApp(
    //   // theme: ThemeData(fontFamily: 'Signika'),
    //   home: BottomNavigation(),
    // );
  }
}

class RestartWidget  extends StatefulWidget {
  final Widget child;

  RestartWidget({Key key, @required this.child})
    : assert(child != null),
      super(key: key);
  
  static restartApp(BuildContext context) {
    final _RestartWidgetState state =
      context.ancestorStateOfType(const TypeMatcher<_RestartWidgetState>());
    state.restartApp();
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      child: widget.child,
    );
  }
}
