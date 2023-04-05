import 'package:flutter/material.dart';
import 'config.dart';
import 'config_colour.dart';

class GridviewBuilder extends StatefulWidget {
  const GridviewBuilder({Key? key}) : super(key: key);

  @override
  State<GridviewBuilder> createState() => _GridviewBuilderState();
}

class _GridviewBuilderState extends State<GridviewBuilder> {
  List personName = [
    'sabari',
    'deepak',
    'saro',
    'sabari',
    'deepak',
    'saro',
  ];
  List customcolor = [
    /*  Colors.pink,
    Colors.grey,
    Colors.deepPurple,
    Colors.yellow,
    Colors.green,*/
    Coloursheet.blackColour,
    Coloursheet.redColour,
    Coloursheet.pinkColour,
    Coloursheet.pinkAccentColour,
    Coloursheet.greyColour,
    Coloursheet.greenColour
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
        body: GridView.builder(
            itemCount: personName.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
            itemBuilder: (BuildContext, int index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  color: customcolor[index],
                ),
                child: Center(
                  child: Text(personName[index],
                      style: const TextStyle(color: Coloursheet.whiteColour)),
                ),
              );
            }));
  }
}
