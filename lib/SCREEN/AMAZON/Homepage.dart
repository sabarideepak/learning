import 'package:flutter/material.dart';

import 'expansiontile.dart';

class AmzHomepage extends StatefulWidget {
  const AmzHomepage({Key? key}) : super(key: key);

  @override
  State<AmzHomepage> createState() => _AmzHomepageState();
}

class _AmzHomepageState extends State<AmzHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.cyan, Colors.cyanAccent],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight))),
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: ShapeDecoration(
              shadows: const <BoxShadow>[
                BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 1)
              ],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.white,
            ),
            child: const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
                title: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    'Search Amazon.in',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                trailing: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Icon(
                    Icons.qr_code_scanner_outlined,
                    color: Colors.grey,
                  ),
                )),
          ),
          actions: const [
            Center(
                child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.keyboard_voice_outlined,
                color: Colors.black,
              ),
            ))
          ],
          bottom: PreferredSize(
              child: Container(
                width: double.infinity,
                height: 35,
                color: Colors.cyanAccent,
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.black),
                    Text('Deliver to Chennai'),
                  ],
                ),
              ),
              preferredSize: Size(double.infinity, 35)),
        ),
        backgroundColor: Colors.grey,
        body: Container(
          width: double.infinity,
          height: 100,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child:
                          Image(image: AssetImage('assets/png/Amazonlogo.png')),
                    ),
                    Text('tt')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child:
                          Image(image: AssetImage('assets/png/Amazonlogo.png')),
                    ),
                    Text('tt')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child:
                          Image(image: AssetImage('assets/png/Amazonlogo.png')),
                    ),
                    Text('tt')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child:
                          Image(image: AssetImage('assets/png/Amazonlogo.png')),
                    ),
                    Text('tt')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child:
                          Image(image: AssetImage('assets/png/Amazonlogo.png')),
                    ),
                    Text('tt')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child:
                          Image(image: AssetImage('assets/png/Amazonlogo.png')),
                    ),
                    Text('tt')
                  ],
                ),
              ])
            ],
          ),
        ));
  }
}

/*
appBar: AppBar(
backgroundColor: Colors.black,
title: Row(
children: [
Row(
children: [
Column(
children: [
Container(
width: 40,
height: 40,
child: Image(
image: AssetImage('assets/png/Amazonlogo.png'),
),
),
],
),
Column(
mainAxisAlignment: MainAxisAlignment.end,
children: [
Container(
child: const Padding(
padding: EdgeInsets.only(top: 8.0),
child: Icon(
Icons.location_on_outlined,
size: 20,
),
)),
],
),
Column(
crossAxisAlignment: CrossAxisAlignment.start,
textDirection: TextDirection.ltr,
children: const [
Text('Hello', style: TextStyle(fontSize: 10)),
Text('Select your address',
style: TextStyle(
fontSize: 10, fontWeight: FontWeight.bold)),
],
),
],
),
Padding(
padding: const EdgeInsets.only(left: 3.0),
child: Row(
children: [
Row(
children: [
Container(
width: 200,
height: 40,
decoration: const ShapeDecoration(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.only(
bottomLeft: Radius.circular(7),
topLeft: Radius.circular(7),
bottomRight: Radius.circular(7),
topRight: Radius.circular(7))),
color: Colors.white,
),
child: Stack(children: [
Container(
width: 50,
height: 40,
decoration: const ShapeDecoration(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.only(
topLeft: Radius.circular(7),
bottomLeft: Radius.circular(7)),
side: BorderSide(color: Colors.black12)),
color: Colors.white70,
),
child: Padding(
padding: const EdgeInsets.only(left: 6.0),
child: Row(
mainAxisAlignment:
MainAxisAlignment.spaceEvenly,
children: const [
Text('All',
style: TextStyle(
fontSize: 12, color: Colors.black)),
Icon(
Icons.arrow_drop_down,
color: Colors.black,
)
],
),
)),
const Center(
child: Padding(
padding: EdgeInsets.only(right: 20.0),
child: Text('Search Amazon.in',
style: TextStyle(
color: Colors.grey, fontSize: 10)),
),
),
Padding(
padding: EdgeInsets.only(left: 260.0),
child: Container(
width: 40,
height: 40,
decoration: const ShapeDecoration(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.only(
bottomRight: Radius.circular(7),
topRight: Radius.circular(7))),
color: Colors.orangeAccent,
),
child: Icon(Icons.search, color: Colors.black),
),
)
]),
),
],
)
],
),
),
],
),
actions: [],
),*/
