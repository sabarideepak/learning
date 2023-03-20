import 'package:flutter/material.dart';
import '/SCREEN/Button.dart';

void main() => runApp(navi());

class navi extends StatelessWidget {
  const navi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Button(),
    );
  }
}
