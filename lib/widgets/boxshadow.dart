import 'package:flutter/material.dart';

class boxshadow extends StatelessWidget {
  double? left, right, top, down;
  double? width, height;
  Color? color;
  DecorationImage? image;

  boxshadow({
    this.left,
    this.right,
    this.top,
    this.down,
    this.width,
    this.height,
    this.color,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          image: image,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 3,
              offset: Offset(0, 2),
              spreadRadius: 5,
            ),
          ],
        ),
      ),
    );
  }
}
