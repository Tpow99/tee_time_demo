import 'package:flutter/material.dart';
import 'package:tee_time/tee_time_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tee Time demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TeeTimeView(),
    );
  }
}


