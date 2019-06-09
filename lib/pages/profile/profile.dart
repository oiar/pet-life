// import 'package:flutter/material.dart';
// import 'package:flutter_app/pages/profile/components/pet_cards.dart';
// import 'package:flutter_app/pages/profile/components/reward.dart';

// class ProfileScreen extends StatefulWidget {
//   @override
//   Screen createState() => Screen();
// }

// class Screen extends State<ProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Container(
//         child: Scaffold(
//           endDrawer: new Drawer(
//           ),
//           backgroundColor: Colors.transparent,
//           appBar: AppBar(
//             elevation: 0,
//             backgroundColor: Colors.transparent,
//             title: new Text('Profile', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 32.0),),
//           ),
//           body: new SingleChildScrollView(
//             child: new Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Card(
//                       elevation: 3.0,
//                       shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
//                       child: new Container(
//                         height: 85,
//                         width: 380,
//                         child: new Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Container(
//                               margin: EdgeInsets.all(16.0),
//                               child: new Icon(Icons.person_outline , size: 50, color: Color(0xFFffc542),),
//                             ),
//                             Container(
//                               margin: EdgeInsets.only(left: 5.0),
//                               child: new Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     child: new Text('Sienna Lee', style: TextStyle(fontSize: 24))
//                                   ),
//                                   Container(
//                                     child: new Row(
//                                       mainAxisAlignment: MainAxisAlignment.start,
//                                       children: [
//                                         Container(
//                                           margin: EdgeInsets.only(top: 5.0),
//                                           child: new Text('Edit profile', style: TextStyle(fontSize: 16)),
//                                         ),
//                                         Container(
//                                           margin: EdgeInsets.only(top: 5.0),
//                                           child: new Icon(Icons.navigate_next ),
//                                         )
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             )
//                           ],
//                         )
//                       ),
//                     )
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
//                       child: new Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             child: new Text('Pet', textAlign: TextAlign.center, style: TextStyle(fontSize: 24)),
//                           ),
//                           Container(
//                             margin: EdgeInsets.only(left: 300.0),
//                             child: new Icon(Icons.add_circle_outline, color: Color(0xFF646465), size: 32.0),
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//                 PetCards(),
//                 Reward()
//               ]
//             )
//           ),
//         )
//       )
//     );
//   }
// }

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:archive/archive.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

import 'data.dart';

const api =
    'https://firebasestorage.googleapis.com/v0/b/playground-a753d.appspot.com/o';

enum AppTheme { candy, cocktail }

class CurrentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen(AppTheme.candy),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  final AppTheme theme;

  ProfileScreen(this.theme);

  @override
  Screen createState() => Screen();
}

class Screen extends State<ProfileScreen> {
  AppTheme _theme;
  String _dir;
  List<String> _images;

  @override
  void initState() {
    super.initState();
    _theme = widget.theme;
    _images = data[_theme];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.style),
        onPressed: () async {
          if(_theme == AppTheme.candy) {
            await _downloadAssets('cocktail');
          }
          setState(() {
            _theme =
              _theme == AppTheme.candy ? AppTheme.cocktail : AppTheme.candy;
            _images = data[_theme];
          });
        },
      ),
      body: ListView.builder(
        itemCount: _images.length,
        itemBuilder: (BuildContext context, int index) {
          return _getImage(_images[index], _dir);
        },
      ),
    );
  }

  Widget _getImage(String name, String dir) {
    if (_theme != AppTheme.candy) {
      var file = _getLocalImageFile(name, dir);
      return Image.file(file);
    }
    return Image.asset('assets/images/$name');
  }

  File _getLocalImageFile(String name, String dir) => File('$dir/$name');

  Future<void> _downloadAssets(String name) async {
    if (_dir == null) {
      _dir = (await getApplicationDocumentsDirectory()).path;
    }

    if (!await _hasToDownloadAssets(name, _dir)) {
      return;
    }
    var zippedFile = await _downloadFile(
      '$api/$name.zip?alt=media&token=7442d067-a656-492f-9791-63e8fc082379',
      '$name.zip',
      _dir
    );

    var bytes = zippedFile.readAsBytesSync();
    var archive = ZipDecoder().decodeBytes(bytes);

    for (var file in archive) {
      var filename = '$_dir/${file.name}';
      if (file.isFile) {
        var outFile = File(filename);
        outFile = await outFile.create(recursive: true);
        await outFile.writeAsBytes(file.content);
      }
    }
  }
  Future<bool> _hasToDownloadAssets(String name, String dir) async {
    var file = File('$dir/$name.zip');
    return !(await file.exists());
  }
  Future<File> _downloadFile(String url, String filename, String dir) async {
    var req = await http.Client().get(Uri.parse(url));
    var file = File('$dir/$filename');
    return file.writeAsBytes(req.bodyBytes);
  }
}