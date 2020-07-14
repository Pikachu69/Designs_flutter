import 'package:flutter/material.dart';

import 'package:designs/src/pages/basic_page.dart';
import 'package:designs/src/pages/advanced_page.dart';
import 'package:designs/src/pages/scroll_page.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'advanced',
      routes: {
        'basic' : (BuildContext context) => BasicoPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
        'advanced' : (BuildContext context) => AdvancedPage()
      },
    );
  }
}