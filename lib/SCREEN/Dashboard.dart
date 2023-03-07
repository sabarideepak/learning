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
                    fontSize: 10.0,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
