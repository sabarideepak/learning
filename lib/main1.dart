import 'package:flutter/material.dart';

void main() => runApp(Mynew());

class Mynew extends StatelessWidget {
  const Mynew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:
              Text('SABARI APP', style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          actions: [
            Icon(Icons.search),
            Padding(padding: EdgeInsets.only(right: 20.0)),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          elevation: 30,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Sabarideepak'),
                accountEmail: Text('deepaksabari2911@gmail.com'),
                currentAccountPicture:
                    Icon(Icons.account_circle_sharp, size: 90),
                currentAccountPictureSize: Size.square(72.0),
                otherAccountsPictures: [
                  Icon(Icons.account_circle_outlined),
                  Icon(Icons.account_circle_sharp),
                ],
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.inbox),
                iconColor: Colors.deepPurple,
                title: Text('Inbox'),
                trailing: Text('100+',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.mail),
                iconColor: Colors.green,
                title: Text('Primary'),
                trailing: Text('1000+',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.send),
                iconColor: Colors.lightBlueAccent,
                title: Text('Sent'),
                trailing: Text('Draft 1',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
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
        body: Stful(),
      ),
    );
  }
}

class Stful extends StatefulWidget {
  const Stful({Key? key}) : super(key: key);

  @override
  State<Stful> createState() => _StfulState();
}

class _StfulState extends State<Stful> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(1),
      children: [
        Padding(padding: EdgeInsets.all(1)),
        ListTile(
          shape: liked
              ? BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))
              : BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
          leading: liked
              ? Icon(Icons.account_circle_outlined)
              : Icon(Icons.account_circle),
          iconColor: Colors.white,
          tileColor: liked ? Colors.blueGrey : Colors.deepOrange,
          title: liked
              ? Text('Sabari', style: TextStyle(color: Colors.white))
              : Text(
                  'Sabari',
                  style: TextStyle(color: Colors.black),
                ),
          subtitle: liked
              ? Text(
                  'worker',
                  style: TextStyle(color: Colors.white),
                )
              : Text(
                  'worker',
                  style: TextStyle(color: Colors.black),
                ),
          trailing: liked ? Icon(Icons.favorite_outline) : Icon(Icons.favorite),
          onTap: () {
            setState(() => liked = !liked);
          },
        ),
        Padding(padding: EdgeInsets.all(2)),
        ListTile(
          shape: liked
              ? BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))
              : BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
          leading: liked
              ? Icon(Icons.account_circle_outlined)
              : Icon(Icons.account_circle),
          iconColor: Colors.white,
          tileColor: liked ? Colors.blueGrey : Colors.deepOrange,
          title: liked
              ? Text('Sabari', style: TextStyle(color: Colors.white))
              : Text(
                  'Sabari',
                  style: TextStyle(color: Colors.black),
                ),
          subtitle: liked
              ? Text(
                  'worker',
                  style: TextStyle(color: Colors.white),
                )
              : Text(
                  'worker',
                  style: TextStyle(color: Colors.black),
                ),
          trailing: liked ? Icon(Icons.favorite_outline) : Icon(Icons.favorite),
          onTap: () {
            setState(() => liked = !liked);
          },
        ),
        Padding(padding: EdgeInsets.all(2)),
        ListTile(
          shape: liked
              ? BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))
              : BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
          leading: liked
              ? Icon(Icons.account_circle_outlined)
              : Icon(Icons.account_circle),
          iconColor: Colors.white,
          tileColor: liked ? Colors.blueGrey : Colors.deepOrange,
          title: liked
              ? Text('Sabari', style: TextStyle(color: Colors.white))
              : Text(
                  'Sabari',
                  style: TextStyle(color: Colors.black),
                ),
          subtitle: liked
              ? Text(
                  'worker',
                  style: TextStyle(color: Colors.white),
                )
              : Text(
                  'worker',
                  style: TextStyle(color: Colors.black),
                ),
          trailing: liked ? Icon(Icons.favorite_outline) : Icon(Icons.favorite),
          onTap: () {
            setState(() => liked = !liked);
          },
        ),
      ],
    );
  }
}
