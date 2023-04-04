import 'package:flutter/material.dart';
import 'config.dart';
import 'config_colour.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  List(string, int index) => [
        'sabari',
        'deepak',
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        centerTitle: true,
        flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
              Coloursheet.redColour,
              Coloursheet.blackColour,
              Coloursheet.redColour
            ]))),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0))),
        backgroundColor: Coloursheet.redColour,
        title: const Text(getString.appbarTitle),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                alignment: Alignment.center,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Coloursheet.blueGrey,
                ),
                child: const Text(getString.listviewtitle,
                    style: TextStyle(color: Coloursheet.whiteColour)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                alignment: Alignment.center,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Coloursheet.blueGrey,
                ),
                child: const Text(getString.listviewtitle,
                    style: TextStyle(color: Coloursheet.whiteColour)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                alignment: Alignment.center,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Coloursheet.blueGrey,
                ),
                child: const Text(getString.listviewtitle,
                    style: TextStyle(color: Coloursheet.whiteColour)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                alignment: Alignment.center,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Coloursheet.blueGrey,
                ),
                child: const Text(getString.listviewtitle,
                    style: TextStyle(color: Coloursheet.whiteColour)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                alignment: Alignment.center,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Coloursheet.blueGrey,
                ),
                child: const Text(getString.listviewtitle,
                    style: TextStyle(color: Coloursheet.whiteColour)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                alignment: Alignment.center,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Coloursheet.blueGrey,
                ),
                child: const Text(getString.listviewtitle,
                    style: TextStyle(color: Coloursheet.whiteColour)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
