import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HeadUpLoading extends PopupRoute {
  // show loading
  static Future<void> show(BuildContext context) async {
    try {
      if (_currentHud != null) {
        _currentHud.navigator.pop();
      }
      HeadUpLoading hud = HeadUpLoading();
      _currentHud = hud;
      Navigator.push(context, hud);
    } catch (e) {
      _currentHud = null;
    }
  }

  //hide loading
  static Future<void> hide() async {
    try {
      _currentHud.navigator.pop();
      _currentHud = null;
    } catch (e) {
      _currentHud = null;
    }
  }

  static HeadUpLoading _currentHud;

  @override
  Color get barrierColor => null;

  @override
  String get barrierLabel => null;

  @override
  Duration get transitionDuration => kThemeAnimationDuration;

  @override
  bool get barrierDismissible => false;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return Stack(
      children: <Widget>[
        Container(
          color: Color.fromRGBO(0, 0, 0, 0.6),
        ),
        Center(
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }
}

class CupertinoHeadUpLoading extends PopupRoute {
  // show loading
  static Future<void> show(BuildContext context) async {
    try {
      if (_currentHud != null) {
        _currentHud.navigator.pop();
      }
      CupertinoHeadUpLoading hud = CupertinoHeadUpLoading();
      _currentHud = hud;
      Navigator.push(context, hud);
    } catch (e) {
      _currentHud = null;
    }
  }

  //hide loading
  static Future<void> hide() async {
    try {
      _currentHud.navigator.pop();
      _currentHud = null;
    } catch (e) {
      _currentHud = null;
    }
  }

  static CupertinoHeadUpLoading _currentHud;

  @override
  Color get barrierColor => null;

  @override
  String get barrierLabel => null;

  @override
  Duration get transitionDuration => kThemeAnimationDuration;

  @override
  bool get barrierDismissible => false;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return Center(
      child: CupertinoActivityIndicator(
        radius: 30,
      ),
    );
  }
}
