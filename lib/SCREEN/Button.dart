import 'package:flutter/material.dart';
import 'floatingButton.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
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
