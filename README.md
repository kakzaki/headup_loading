# blue_thermal_printer

https://pub.dev/packages/headup_loading

A Flutter plugin for heads up display progress indicator

## Getting Started

1. Depend on it

Add this to your package's pubspec.yaml file:

    dependencies:
      headup_loading: ^any

2. Install it

You can install packages from the command line:

with Flutter:

    $ flutter packages get

Alternatively, your editor might support flutter packages get. Check the docs for your editor to learn more.
3. Import it

Now in your Dart code, you can use:

     import 'package:headup_loading/headup_loading.dart';


EXAMPLE:

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


If you like my content, please consider buying me a coffee. Thank you for your support!

<a href="https://www.buymeacoffee.com/QP1rCmf5L" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/Z8Z6656JW)

bagi yang dari Indonesia bisa lewat saweria berikut

https://saweria.co/kakzaki
