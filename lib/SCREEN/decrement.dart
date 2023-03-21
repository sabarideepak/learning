import 'package:flutter/material.dart';

class decrement extends StatefulWidget {
  const decrement({Key? key}) : super(key: key);

  @override
  State<decrement> createState() => _decrementState();
}

class _decrementState extends State<decrement> {
  int i = 0;

  void increment() {
    setState(() {
      if (i < 0) {
        i = 0;
      } else {
        i++;
      }
    });
  }

  void decre() {
    setState(() {
      if (i <= 0) {
        i = 0;
      } else {
        i--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.topCenter,
                width: _mediaQuery.size.width * 0.5,
                height: _mediaQuery.size.height * 0.5,
                child: Text(
                  "Count $i",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blue),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: _mediaQuery.size.width * 0.1,
                height: _mediaQuery.size.height * 0.1,
                child: FloatingActionButton(
                    onPressed: increment,
                    tooltip: 'increment',
                    child: const Icon(Icons.add)),
              ),
              Container(
                width: _mediaQuery.size.width * 0.1,
                height: _mediaQuery.size.height * 0.1,
                child: FloatingActionButton(
                    onPressed: decre,
                    tooltip: 'decrement',
                    child: const Icon(Icons.remove)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
