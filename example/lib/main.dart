import 'package:flutter/material.dart';
import 'dart:async';
import 'package:headup_loading/headup_loading.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: new AppBar(
            title: new Text('HeadUp Loading Demo'),
          ),
          body: ListView(
            shrinkWrap: true,
            children: <Widget>[
              RaisedButton(
                  onPressed: showLoading, child: new Text("Show Loading")),
              RaisedButton(
                  onPressed: showLoadingCupertino, child: new Text("Show Loading Cupertino"))
            ],
       )),
    );
  }

  Future<void> showLoading() async {
    HeadUpLoading.show(context);
    Future.delayed(Duration(seconds: 2)).then((val) {
      HeadUpLoading.hide();
    });
  }

  Future<void> showLoadingCupertino() async {
    CupertinoHeadUpLoading.show(context);
    Future.delayed(Duration(seconds: 2)).then((val) {
      CupertinoHeadUpLoading.hide();
    });
  }
}