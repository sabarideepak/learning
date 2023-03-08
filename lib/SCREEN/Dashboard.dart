import 'dart:math';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text(
          'Dashboard'.toUpperCase(),
          selectionColor: Colors.white,
        ),
      ),
      body: Center(
        child: Text(
          'This is Random value ${getNumber()}',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}

int getNumber() {
  return Random().nextInt(30);
}
