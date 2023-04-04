import 'package:flutter/material.dart';
import 'config.dart';
import 'config_colour.dart';

class ListviewBuilder extends StatefulWidget {
  const ListviewBuilder({Key? key}) : super(key: key);

  @override
  State<ListviewBuilder> createState() => _ListviewState();
}

class _ListviewState extends State<ListviewBuilder> {
  final personName = [
    'sabari',
    'deepak',
    'saro',
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
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: personName.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Coloursheet.greyColour,
            ),
            alignment: Alignment.center,
            height: 100,
            child: Text(personName[index]),
          );
        },
      ),
    );
  }
}
