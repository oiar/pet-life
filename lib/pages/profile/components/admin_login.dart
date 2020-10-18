import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<Admin> createAdmin(String username, password) async {
  final http.Response response = await http.post(
    'http://127.0.0.1:8000/api/v1/admin/login',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'name': username,
      'password': password,
    }),
  );

  if (response.statusCode == 200) {
    final token = Admin.fromJson(json.decode(response.body)).token;
    Admin().setToken(token);
    return Admin.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to login.');
  }
}

class Admin {
  Future<bool> setToken(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('token', value);
  }

  Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  final String token;

  Admin({this.token});

  factory Admin.fromJson(Map<String, dynamic> json) {
    return Admin(
      token: json['token'],
    );
  }
}

class AdminLogin extends StatefulWidget {
  @override
  Screen createState() => Screen(); 
}

class Screen extends State<AdminLogin> {
  final _usernameController = TextEditingController(text: "Admin");
  final _passwordController = TextEditingController(text: "111111");
  Future<Admin> _futureAdmin;
  // final _storage = FlutterSecureStorage();

  @override
  // ignore: todo
  // TODO: implement widget
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Color(0xFFffc542),
        accentColor: Color(0xFFffc542),
        textSelectionColor: Color(0xFFffc542),
        focusColor: Color(0xFFffc542)
      ),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text("Login", style: TextStyle(fontSize: ScreenUtil().setWidth(52.0), color: Colors.white)),
        ),
        backgroundColor: Color(0xFFFEF1D4),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: ScreenUtil().setWidth(72.0), left: ScreenUtil().setWidth(72.0)),
            child: (_futureAdmin == null)
            ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0)),
                  child: Text('Username', style: TextStyle(fontSize: ScreenUtil().setSp(36.0))),
                ),
                Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0)),
                  child: TextFormField(
                    cursorColor: Color(0xFFffc542),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFfef7ec),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFfef7ec), width: 0.0),
                      ),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0)),
                  child: Text('Password', style: TextStyle(fontSize: ScreenUtil().setSp(36.0))),
                ),
                Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setWidth(16.0)),
                  child: TextFormField(
                    cursorColor: Color(0xFFffc542),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFfef7ec),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFfef7ec), width: 0.0),
                      ),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setWidth(32.0)),
                  child: Container(
                    height: ScreenUtil().setWidth(92),
                    // padding: EdgeInsets.only(left: ScreenUtil().setWidth(160.0), right: ScreenUtil().setWidth(160.0)),
                    child: Center(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                        onPressed: () {
                          setState(() {
                            _futureAdmin = createAdmin(_usernameController.text, _passwordController.text);
                          });
                        },
                        color: Color(0xFFffc542),
                        child: Text('Add', style: TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(40.0)),),
                      )
                    )
                  )
                )
              ],
            )
          : FutureBuilder<Admin>(
              future: _futureAdmin,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text("${snapshot.data.token}");
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                return CircularProgressIndicator();
              },
            ),
          )
        ),
      ),
    );
  }
}