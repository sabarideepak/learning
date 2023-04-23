import 'package:flutter/material.dart';

import 'SCREEN/AMAZON/UI_Design/UI_Design.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UI_Design(),
    );
  }
}
