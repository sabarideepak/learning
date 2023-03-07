import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
import '/SCREEN/Dashboard.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAGE',
      color: Colors.deepPurple,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blueGrey[900],
          appBar: AppBar(
            title: Text(
              'Dashboard'.toUpperCase(),
              selectionColor: Colors.white,
            ),
          ),
          body: Dashboard()),
    );
  }
}
