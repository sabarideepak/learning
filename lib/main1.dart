import 'package:flutter/material.dart';
import 'package:learning/SCREEN/Routerscreen.dart';
//import 'package:learning/SCREEN/calculator.dart';

void main() => runApp(const Mynew());

class Mynew extends StatelessWidget {
  const Mynew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routerclass.navirout(),
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
