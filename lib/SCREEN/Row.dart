import 'package:flutter/material.dart';

class Row1 extends StatefulWidget {
  const Row1({Key? key}) : super(key: key);

  @override
  State<Row1> createState() => _RowState();
}

class _RowState extends State<Row1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.grey,
                width: 180,
                height: 30,
                child: const Center(
                  child: Text('COLOR  :',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    color: Colors.deepPurple),
              ),
              Container(
                width: 70,
                height: 30,
                decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    color: Colors.deepPurple),
                child: const Center(
                    child: Text('ROW', style: TextStyle(color: Colors.white))),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.grey,
                    width: 180,
                    height: 30,
                    child: const Center(
                      child: Text('COLOR  :',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25)),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        color: Colors.pinkAccent),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        color: Colors.pinkAccent),
                    child: const Center(
                        child: Text('COLUMN',
                            style: TextStyle(color: Colors.white))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
