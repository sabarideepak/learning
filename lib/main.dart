import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'SAGE',
      color: Colors.deepPurple,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text(
            'Dashboard',
            selectionColor: Colors.white,
          ),
        ),
        body: Center(
          child: Text.rich(
            TextSpan(
              text: 'WELCOME',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
              children: [
                TextSpan(
                  text: 'you',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                TextSpan(
                  text: 'ALL',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
