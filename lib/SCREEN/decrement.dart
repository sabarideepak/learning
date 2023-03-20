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
      i++;
    });
  }

  void decre() {
    setState(() {
      i--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: const EdgeInsets.only(top: 750),
          children: [
            ListTile(
              leading: FloatingActionButton(
                  onPressed: increment,
                  tooltip: 'increment',
                  child: const Icon(Icons.add)),
              title: Padding(
                padding: const EdgeInsets.only(left: 150.0),
                child: Text(
                  'COUNT $i',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.red),
                ),
              ),
              trailing: FloatingActionButton(
                  onPressed: decre, child: const Icon(Icons.remove)),
            ),
          ],
        ),
      ),
    );
  }
}
