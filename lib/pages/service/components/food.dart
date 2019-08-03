import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:http/http.dart';

const kUrl1 = 'https://luan.xyz/files/audio/ambient_c_motion.mp3';

class FoodScreen extends StatefulWidget {
  @override
  Screen createState() => Screen();
}

class Screen extends State<FoodScreen> {

  AudioPlayer advancedPlayer;

  @override
  initState() {
    super.initState();
    // loadMusic();
  }

  Future loadMusic() async {
    advancedPlayer = await AudioCache().play("music/ggg.mp3");
  }

  @override
  void dispose() {
    advancedPlayer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: new SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        // child: Container()
      ),
    );
  }
}