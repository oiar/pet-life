import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation.dart';

///打开APP首页
class SplashWidget extends StatefulWidget {
  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: 'Profile',
        styleTitle: TextStyle(fontFamily: 'BerkshireSwash', fontSize: 36, fontWeight: FontWeight.bold),
        pathImage: 'lib/assets/images/restart1.png',
        backgroundColor: Colors.white,
      ),
    );

    slides.add(
      new Slide(
        title: 'Schedule',
        styleTitle: TextStyle(fontFamily: 'BerkshireSwash', fontSize: 36, fontWeight: FontWeight.bold),
        pathImage: 'lib/assets/images/restart2.png',
        backgroundColor: Colors.white,
      ),
    );

    slides.add(
      new Slide(
        title: 'Service',
        styleTitle: TextStyle(fontFamily: 'BerkshireSwash', fontSize: 36, fontWeight: FontWeight.bold),
        pathImage: 'lib/assets/images/restart3.png',
        backgroundColor: Colors.white
      ),
    );
  }

  void onDonePress() {
    _setHasSkip();
    Navigator.of(context).pushAndRemoveUntil(
      new MaterialPageRoute(
        builder: (context) => BottomNavigation()
      ),
      (route) => route == null
    );
  }

  void _setHasSkip ()async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("hasSkip", true);
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: IntroSlider(
        colorActiveDot: Color(0xFFffc542),
        styleNameDoneBtn: TextStyle(color: Color(0xFFffc542)),
        styleNamePrevBtn: TextStyle(color: Color(0xFFffc542)),
        styleNameSkipBtn: TextStyle(color: Color(0xFFffc542)),
        slides: this.slides,
        onDonePress: this.onDonePress,
        onSkipPress: this.onDonePress,
        nameSkipBtn: "SKIP",
        nameNextBtn: "NEXT",
        nameDoneBtn: "NEXT",
      )
    );
  }
}
