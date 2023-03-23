import 'package:flutter/material.dart';
import 'SCREEN/decrement.dart';

void main() => runApp(const Mynew());

class Mynew extends StatelessWidget {
  const Mynew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SABARI APP',
              style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          actions: const [
            Icon(Icons.search),
            Padding(padding: EdgeInsets.only(right: 20.0)),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          elevation: 30,
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
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
                leading: const Icon(Icons.inbox),
                iconColor: Colors.deepPurple,
                title: const Text('Inbox'),
                trailing: const Text('100+',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.mail),
                iconColor: Colors.green,
                title: const Text('Primary'),
                trailing: const Text('1000+',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.send),
                iconColor: Colors.lightBlueAccent,
                title: const Text('Sent'),
                trailing: const Text('Draft 1',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.delete),
                title: const Text('Trash'),
                iconColor: Colors.black,
                trailing: const Icon(Icons.delete_forever),
                hoverColor: Colors.red,
              ),
              const ListTile(
                title: Text('Labels'),
                hoverColor: Colors.red,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.label),
                title: const Text('Favourite'),
                iconColor: Colors.pink,
                trailing: const Icon(Icons.favorite),
                hoverColor: Colors.red,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.label),
                title: const Text('Green'),
                iconColor: Colors.green,
              ),
            ],
          ),
        ),
        body: const decrement(),
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
      padding: const EdgeInsets.all(1),
      children: [
        const Padding(padding: EdgeInsets.all(1)),
        ListTile(
          shape: liked
              ? const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))
              : const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
          leading: liked
              ? const Icon(Icons.account_circle_outlined)
              : const Icon(Icons.account_circle),
          iconColor: Colors.white,
          tileColor: liked ? Colors.blueGrey : Colors.deepOrange,
          title: liked
              ? const Text('Sabari', style: TextStyle(color: Colors.white))
              : const Text(
                  'Sabari',
                  style: TextStyle(color: Colors.black),
                ),
          subtitle: liked
              ? const Text(
                  'worker',
                  style: TextStyle(color: Colors.white),
                )
              : const Text(
                  'worker',
                  style: TextStyle(color: Colors.black),
                ),
          trailing: liked
              ? const Icon(Icons.favorite_outline)
              : const Icon(Icons.favorite),
          onTap: () {
            setState(() => liked = !liked);
          },
        ),
        const Padding(padding: EdgeInsets.all(2)),
        ListTile(
          shape: liked
              ? const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))
              : const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
          leading: liked
              ? const Icon(Icons.account_circle_outlined)
              : const Icon(Icons.account_circle),
          iconColor: Colors.white,
          tileColor: liked ? Colors.blueGrey : Colors.deepOrange,
          title: liked
              ? const Text('Sabari', style: TextStyle(color: Colors.white))
              : const Text(
                  'Sabari',
                  style: TextStyle(color: Colors.black),
                ),
          subtitle: liked
              ? const Text(
                  'worker',
                  style: TextStyle(color: Colors.white),
                )
              : const Text(
                  'worker',
                  style: TextStyle(color: Colors.black),
                ),
          trailing: liked
              ? const Icon(Icons.favorite_outline)
              : const Icon(Icons.favorite),
          onTap: () {
            setState(() => liked = !liked);
          },
        ),
        const Padding(padding: EdgeInsets.all(2)),
        ListTile(
          shape: liked
              ? const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))
              : const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
          leading: liked
              ? const Icon(Icons.account_circle_outlined)
              : const Icon(Icons.account_circle),
          iconColor: Colors.white,
          tileColor: liked ? Colors.blueGrey : Colors.deepOrange,
          title: liked
              ? const Text('Sabari', style: TextStyle(color: Colors.white))
              : const Text(
                  'Sabari',
                  style: TextStyle(color: Colors.black),
                ),
          subtitle: liked
              ? const Text(
                  'worker',
                  style: TextStyle(color: Colors.white),
                )
              : const Text(
                  'worker',
                  style: TextStyle(color: Colors.black),
                ),
          trailing: liked
              ? const Icon(Icons.favorite_outline)
              : const Icon(Icons.favorite),
          onTap: () {
            setState(() => liked = !liked);
          },
        ),
      ],
    );
  }
}
