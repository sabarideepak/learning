import 'dart:html';

import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  bool i = true;
  int a = 0;
  int b = 2;
  void one() {
    setState(() {
      print(a);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                textDirection: TextDirection.rtl,
                children: [
                  Container(
                    width: 450,
                    height: 70,
                    decoration: const ShapeDecoration(
                      color: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      shadows: [
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 1.0,
                            spreadRadius: 1)
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '${a}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.extended(
                extendedTextStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                onPressed: one,
                label: const Text('1'),
              ),
              FloatingActionButton.extended(
                extendedTextStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                onPressed: () {},
                label: const Text('2'),
              ),
              FloatingActionButton.extended(
                extendedTextStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                onPressed: () {},
                label: const Text('3'),
              ),
              FloatingActionButton.extended(
                extendedTextStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                onPressed: () {},
                label: const Text('+'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.extended(
                extendedTextStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                onPressed: () {},
                label: const Text('4'),
              ),
              FloatingActionButton.extended(
                extendedTextStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                onPressed: () {},
                label: const Text('5'),
              ),
              FloatingActionButton.extended(
                extendedTextStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                onPressed: () {},
                label: const Text('6'),
              ),
              FloatingActionButton.extended(
                extendedTextStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                onPressed: () {},
                label: const Text('-'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.extended(
                extendedTextStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                onPressed: () {},
                label: const Text('7'),
              ),
              FloatingActionButton.extended(
                extendedTextStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                onPressed: () {},
                label: const Text('8'),
              ),
              FloatingActionButton.extended(
                extendedTextStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                onPressed: () {},
                label: const Text('9'),
              ),
              FloatingActionButton.extended(
                extendedTextStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                onPressed: () {},
                label: const Text('*'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.only(right: 25),
                width: 150,
                height: 70,
                child: FloatingActionButton.extended(
                  extendedTextStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30),
                  onPressed: () {},
                  label: const Text('0'),
                ),
              ),
              Container(
                width: 150,
                height: 70,
                padding: EdgeInsets.only(right: 20),
                child: FloatingActionButton.extended(
                  extendedTextStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30),
                  onPressed: () {},
                  label: const Text('='),
                ),
              ),
              FloatingActionButton.extended(
                extendedTextStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                onPressed: () {},
                label: const Text('/'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
