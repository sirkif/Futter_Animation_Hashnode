import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animation_hashnode/screens/lesson_1.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LessonOne(),
    );
  }
}
