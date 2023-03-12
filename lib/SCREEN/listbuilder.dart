import 'package:flutter/material.dart';

class listbuilder extends StatelessWidget {
  listbuilder({Key? key}) : super(key: key);

  List<String> Name = [
    "SABARI",
    "DEEPAK",
    "SARAVANAN",
    "SABARI",
    "DEEPAK",
    "SARAVANAN",
    "SABARI",
    "DEEPAK",
    "SARAVANAN",
    "SABARI",
    "DEEPAK",
    "SARAVANAN"
  ];
  List<String> Rollno = [
    '8344',
    '8355',
    '8366',
    '8344',
    '8355',
    '8366',
    '8344',
    '8355',
    '8366',
    '8344',
    '8355',
    '8366',
    '8344',
    '8355',
    '8366',
    '8344',
    '8355',
    '8366'
  ];
  List<String> Role = [
    "Developer",
    "React",
    "Flutter",
    "Developer",
    "React",
    "Flutter",
    "Developer",
    "React",
    "Flutter",
    "Developer",
    "React",
    "Flutter"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: 12,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(Name[index][0]),
              ),
              title: Text(Name[index]),
              subtitle:
                  Text(Role[index], style: TextStyle(color: Colors.green)),
              trailing: Text(Rollno[index],
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.pink)),
            );
          },
        ),
      ),
    );
  }
}
