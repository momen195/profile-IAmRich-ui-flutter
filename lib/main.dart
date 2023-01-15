import 'package:flutter/material.dart';
import 'package:i_am_rich/I-am-rich/IAmRich-Screen.dart';
import 'package:i_am_rich/profile/profile-screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}
