import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
//import '/SCREEN/Dashboard.dart';
//import '/SCREEN/Button.dart';
//import '/SCREEN/Important.dart';
import '/SCREEN/List.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAGE',
      themeMode: ThemeMode.system,
      color: Colors.deepPurple,
      debugShowCheckedModeBanner: false,
      home: List(),
    );
  }
}
