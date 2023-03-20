import 'package:flutter/material.dart';
import 'floatingButton.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        actions: [
          IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
        backgroundColor: Colors.deepPurple,
        elevation: 30,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        centerTitle: true,
      ),
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
      body: Center(
        child: ElevatedButton(
          child: Text('WELCOME'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return floatingButton();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            fixedSize: Size(500.0, 100.0),
            alignment: Alignment.center,
            primary: Colors.black,
            onPrimary: Colors.white,
            elevation: 30,
            shadowColor: Colors.indigo,
            shape: StadiumBorder(side: BorderSide.none),
            side: BorderSide(
                color: Colors.deepPurple, style: BorderStyle.solid, width: 5),
            textStyle: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
            splashFactory: InkSplash.splashFactory,
          ),
        ),
      ),
    );
  }
}
