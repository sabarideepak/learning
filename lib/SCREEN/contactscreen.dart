import 'package:flutter/material.dart';
import 'package:learning/SCREEN/config_colour.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List names = [
      'santosh',
      'syam',
      'guru',
      'sabari',
      'deepak',
      'santosh',
      'syam',
      'guru',
      'sabari',
      'deepak'
    ];
    List content = [
      'hi da',
      'where are you',
      'Attached file',
      'Shared Location',
      'Emoji',
      'hi da',
      'where are you',
      'Attached file',
      'Shared Location',
      'Emoji'
    ];
    List time = [
      '12.11 PM',
      '10.30 AM',
      '8.00 AM',
      '2.00 AM',
      '3.00 PM',
      '12.11 PM',
      '10.30 AM',
      '8.00 AM',
      '2.00 AM',
      '3.00 PM'
    ];
    List unread = ['121', '11', '1', '33', '7', '121', '11', '1', '33', '7'];
    return Scaffold(
      body: ListView.separated(
        itemCount: names.length,
        itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
                child: Image.asset(
              'assets/png/hair.png',
              fit: BoxFit.cover,
            )),
            title: Text(names[index],
                style: const TextStyle(
                    color: Coloursheet.blackColour,
                    fontWeight: FontWeight.bold)),
            subtitle: Text(content[index],
                style: const TextStyle(color: Coloursheet.blueGrey)),
            trailing: Column(
              children: [
                Container(
                  child: Text(time[index],
                      style: const TextStyle(color: Coloursheet.blueColour)),
                ),
                Container(
                  child: Container(
                    alignment: Alignment.center,
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: Text(
                      unread[index],
                      style: const TextStyle(color: Coloursheet.whiteColour),
                    ),
                  ),
                ),
              ],
            )),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

/*
ListView(
scrollDirection: Axis.vertical,
itemExtent: 100.0,
reverse: false,
shrinkWrap: true,
children: [
Padding(
padding: const EdgeInsets.all(3.0),
child: ListTile(
leading: CircleAvatar(
child: Icon(Icons.account_circle_sharp),
),
title: Text('Sabarideepak'),
subtitle: Text('New Message'),
trailing: Icon(Icons.forward),
onTap: () {},
iconColor: Colors.limeAccent,
tileColor: Colors.deepPurple,
textColor: Colors.limeAccent,
hoverColor: Colors.deepOrange,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.vertical(
top: Radius.circular(20),
bottom: Radius.circular(20),
),
),
),
),
Padding(
padding: const EdgeInsets.all(3.0),
child: ListTile(
leading: CircleAvatar(
child: Icon(Icons.account_circle_sharp),
),
title: Text('Sabarideepak'),
subtitle: Text('New Message'),
trailing: Icon(Icons.forward),
onTap: () {},
iconColor: Colors.limeAccent,
tileColor: Colors.deepPurple,
textColor: Colors.limeAccent,
hoverColor: Colors.deepOrange,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.vertical(
top: Radius.circular(20),
bottom: Radius.circular(20),
),
),
),
),
Padding(
padding: const EdgeInsets.all(3.0),
child: ListTile(
leading: CircleAvatar(
child: Icon(Icons.account_circle_sharp),
),
title: Text('Sabarideepak'),
subtitle: Text('New Message'),
trailing: Icon(Icons.forward),
onTap: () {},
iconColor: Colors.limeAccent,
tileColor: Colors.deepPurple,
textColor: Colors.limeAccent,
hoverColor: Colors.deepOrange,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.vertical(
top: Radius.circular(20),
bottom: Radius.circular(20),
),
),
),
),
Padding(
padding: const EdgeInsets.all(3.0),
child: ListTile(
leading: CircleAvatar(
child: Icon(Icons.account_circle_sharp),
),
title: Text('Sabarideepak'),
subtitle: Text('New Message'),
trailing: Icon(Icons.forward),
onTap: () {},
iconColor: Colors.limeAccent,
tileColor: Colors.deepPurple,
textColor: Colors.limeAccent,
hoverColor: Colors.deepOrange,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.vertical(
top: Radius.circular(20),
bottom: Radius.circular(20),
),
),
),
),
Padding(
padding: const EdgeInsets.all(3.0),
child: ListTile(
leading: CircleAvatar(
child: Icon(Icons.account_circle_sharp),
),
title: Text('Sabarideepak'),
subtitle: Text('New Message'),
trailing: Icon(Icons.forward),
onTap: () {},
iconColor: Colors.limeAccent,
tileColor: Colors.deepPurple,
textColor: Colors.limeAccent,
hoverColor: Colors.deepOrange,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.vertical(
top: Radius.circular(20),
bottom: Radius.circular(20),
),
),
),
),
Padding(
padding: const EdgeInsets.all(3.0),
child: ListTile(
leading: CircleAvatar(
child: Icon(Icons.account_circle_sharp),
),
title: Text('Sabarideepak'),
subtitle: Text('New Message'),
trailing: Icon(Icons.forward),
onTap: () {},
iconColor: Colors.limeAccent,
tileColor: Colors.deepPurple,
textColor: Colors.limeAccent,
hoverColor: Colors.deepOrange,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.vertical(
top: Radius.circular(20),
bottom: Radius.circular(20),
),
),
),
),
Padding(
padding: const EdgeInsets.all(3.0),
child: ListTile(
leading: CircleAvatar(
child: Icon(Icons.account_circle_sharp),
),
title: Text('Sabarideepak'),
subtitle: Text('New Message'),
trailing: Icon(Icons.forward),
onTap: () {},
iconColor: Colors.limeAccent,
tileColor: Colors.deepPurple,
textColor: Colors.limeAccent,
hoverColor: Colors.deepOrange,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.vertical(
top: Radius.circular(20),
bottom: Radius.circular(20),
),
),
),
),
Padding(
padding: const EdgeInsets.all(3.0),
child: ListTile(
leading: CircleAvatar(
child: Icon(Icons.account_circle_sharp),
),
title: Text('Sabarideepak'),
subtitle: Text('New Message'),
trailing: Icon(Icons.forward),
onTap: () {},
iconColor: Colors.limeAccent,
tileColor: Colors.deepPurple,
textColor: Colors.limeAccent,
hoverColor: Colors.deepOrange,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.vertical(
top: Radius.circular(20),
bottom: Radius.circular(20),
),
),
),
),
Padding(
padding: const EdgeInsets.all(3.0),
child: ListTile(
leading: CircleAvatar(
child: Icon(Icons.account_circle_sharp),
),
title: Text('Sabarideepak'),
subtitle: Text('New Message'),
trailing: Icon(Icons.forward),
onTap: () {},
iconColor: Colors.limeAccent,
tileColor: Colors.deepPurple,
textColor: Colors.limeAccent,
hoverColor: Colors.deepOrange,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.vertical(
top: Radius.circular(20),
bottom: Radius.circular(20),
),
),
),
),
],
),*/
