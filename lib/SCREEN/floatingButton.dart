import 'package:flutter/material.dart';
import 'package:learning/widgets/boxshadow.dart';

class floatingButton extends StatelessWidget {
  const floatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_alert),
        elevation: 10.0,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.blue,
        height: 70.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.download),
                  Text('Downloads'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.settings),
                  Text('Downloads'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.add),
                  Text('Downloads'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.add_a_photo_sharp),
                  Text('Downloads'),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            boxshadow(
              //this one custom widget
              image: DecorationImage(
                image: AssetImage(
                    'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
                fit: BoxFit.fill,
              ),
              top: 1,
              color: Colors.pink,
              left: 1,
              height: 50.0,
              width: 50.0,
            ),
            Positioned(
              left: 50,
              top: 200.0,
              child: Container(
                  width: 500.0,
                  height: 400.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(0, 2),
                        spreadRadius: 5,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(
                          'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
            Positioned(
              left: 25,
              top: 150.0,
              child: Container(
                  width: 200.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(0, 2),
                        spreadRadius: 5,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(
                          'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
            Positioned(
              left: 375,
              top: 150.0,
              child: Container(
                  width: 200.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(0, 2),
                        spreadRadius: 5,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(
                          'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
            Positioned(
              top: 570.0,
              left: 370,
              child: Text('STACK MODE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Positioned(
              top: 125.0,
              left: 370,
              child: Text('my dear friends',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Positioned(
              top: 100.0,
              left: 370,
              child: Text('Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
