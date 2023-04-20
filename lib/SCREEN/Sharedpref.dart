import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedpref extends StatefulWidget {
  const Sharedpref({Key? key}) : super(key: key);

  @override
  State<Sharedpref> createState() => _SharedprefState();
}

class _SharedprefState extends State<Sharedpref> {
  String? writeresult = "";
  void readPref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      writeresult = prefs.getString('action');
    });
    debugPrint('Read');
  }

  void writePref() async {
    final SharedPreferences prefs1 = await SharedPreferences.getInstance();
    await prefs1.setString('action', 'Start');
    writeresult = prefs1.getString('action');
    debugPrint('write');
  }

  void updatePref() async {
    final SharedPreferences prefs2 = await SharedPreferences.getInstance();
    await prefs2.setString('action', 'UpdateTask');
    readPref();
    debugPrint('update');
  }

  void deletePref() async {
    final SharedPreferences prefs3 = await SharedPreferences.getInstance();
    await prefs3.remove('action');
    setState(() {
      writeresult = '';
    });

    debugPrint('delete');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "$writeresult",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {
                  writePref();
                },
                child: const Text('WRITE')),
            ElevatedButton(
                onPressed: () {
                  readPref();
                },
                child: const Text('READ')),
            ElevatedButton(
                onPressed: () {
                  updatePref();
                },
                child: const Text('UPDATE')),
            ElevatedButton(
                onPressed: () {
                  deletePref();
                },
                child: const Text('DELETE'))
          ],
        ),
      ),
    );
  }
}
