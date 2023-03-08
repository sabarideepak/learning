import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Dashboard'.toUpperCase(),
          selectionColor: Colors.white,
        ),
      ),
      body: Center(
        child: IconButton(
          icon: const Icon(FontAwesomeIcons.apple, shadows: [
            Shadow(
              color: Colors.white,
              blurRadius: 0,
              offset: Offset(0, 5.0),
            )
          ]),
          onPressed: () {},
          color: Colors.blue,
          splashColor: Colors.white,
          highlightColor: Colors.deepOrange,
          iconSize: 300,
        ),
      ),
    );

    /* Center(   ------------>image additing
        child: Image.asset(
          'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg',
          width: 900,
          height: 1200,
          fit: BoxFit.cover,
        ),

      ),*/
  }
}

int getNumber() {
  return Random().nextInt(30);
}
