import 'package:flutter/material.dart';
import 'package:travel_proj/detail_choose_hotel.dart';
import 'package:travel_proj/detail_choose_kamar.dart';
import 'package:travel_proj/navigator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigatorScreen(),
    );
  }
}
