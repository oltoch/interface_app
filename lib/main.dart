import 'package:flutter/material.dart';
import 'package:interface_app/Screens/screen_one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff030909),
        scaffoldBackgroundColor: Color(0xff181A1E),
      ),
      home: ScreenOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}
