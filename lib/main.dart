import 'package:flutter/material.dart';
import 'package:maps/ui/DashBoard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LocationUI',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashBoardPage(),
    );
  }
}
