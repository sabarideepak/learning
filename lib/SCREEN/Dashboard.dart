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
        child: Image.asset(
          'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg',
          width: 900,
          height: 1200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

int getNumber() {
  return Random().nextInt(30);
}
