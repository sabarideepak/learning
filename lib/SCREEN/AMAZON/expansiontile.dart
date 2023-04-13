import 'package:flutter/material.dart';

class Expans extends StatefulWidget {
  const Expans({Key? key}) : super(key: key);

  @override
  State<Expans> createState() => _ExpansState();
}

class _ExpansState extends State<Expans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExpansionTile(title: Text('All'), children: [
        ListTile(
          leading: Text('All'),
        ),
        ListTile(
          leading: Text('All'),
        ),
        ListTile(
          leading: Text('All'),
        ),
        ListTile(
          leading: Text('All'),
        ),
        ListTile(
          leading: Text('All'),
        ),
        ListTile(
          leading: Text('All'),
        )
      ]),
    );
  }
}
