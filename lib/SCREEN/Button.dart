import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Button'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            fixedSize: Size(700.0, 200.0),
            alignment: Alignment.center,
            primary: Colors.black,
            onPrimary: Colors.indigoAccent,
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
