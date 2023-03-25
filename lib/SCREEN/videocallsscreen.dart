import 'package:flutter/material.dart';

class Videocalls extends StatelessWidget {
  const Videocalls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
              iconColor: Colors.black,
              tileColor: Colors.purple[400],
              textColor: Colors.white,
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
              iconColor: Colors.black,
              tileColor: Colors.purple[400],
              textColor: Colors.white,
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
              iconColor: Colors.black,
              tileColor: Colors.purple[400],
              textColor: Colors.white,
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
      ),
    );
  }
}
