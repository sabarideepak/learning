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
      drawer: Drawer(
        backgroundColor: Colors.white,
        elevation: 30,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Sabarideepak'),
              accountEmail: Text('deepaksabari2911@gmail.com'),
              currentAccountPicture: Icon(Icons.account_circle_sharp, size: 90),
              currentAccountPictureSize: Size.square(72.0),
              otherAccountsPictures: [
                Icon(Icons.account_circle_sharp),
                Icon(Icons.account_circle_sharp),
              ],
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.inbox),
              iconColor: Colors.deepPurple,
              title: Text('Inbox'),
              trailing:
                  Text('unread 100+', style: TextStyle(color: Colors.red)),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.mail),
              iconColor: Colors.green,
              title: Text('Primary'),
              trailing:
                  Text('unread 1000+', style: TextStyle(color: Colors.red)),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.send),
              iconColor: Colors.lightBlueAccent,
              title: Text('Sent'),
              trailing:
                  Text('unsaved Draft', style: TextStyle(color: Colors.red)),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.delete),
              title: Text('Trash'),
              iconColor: Colors.black,
              trailing: Icon(Icons.delete_forever),
              hoverColor: Colors.red,
            ),
            ListTile(
              title: Text('Labels'),
              hoverColor: Colors.red,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.label),
              title: Text('Favourite'),
              iconColor: Colors.pink,
              trailing: Icon(Icons.favorite),
              hoverColor: Colors.red,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.label),
              title: Text('Green'),
              iconColor: Colors.green,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title:
            Text('SABARI APP', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          Icon(Icons.search),
          Padding(padding: EdgeInsets.only(right: 20.0)),
        ],
      ),
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
