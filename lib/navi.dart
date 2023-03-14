import 'package:flutter/material.dart';
import '/SCREEN/Button.dart';

void main() => runApp(navi());

class navi extends StatelessWidget {
  const navi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Button(),
    );
  }
}
