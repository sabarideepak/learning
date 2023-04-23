import 'package:flutter/material.dart';
import 'config.dart';

class Active extends StatefulWidget {
  const Active({Key? key}) : super(key: key);

  @override
  State<Active> createState() => _ActiveState();
}

class _ActiveState extends State<Active> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(radius: 5),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(textString.Bottommainlist1,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      SizedBox(
                        width: 255,
                      ),
                      Icon(Icons.star, color: Colors.orange),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: const [
                        Icon(Icons.format_align_right_outlined, size: 10),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          textString.SubTextpara,
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Row(
                      children: const [
                        CircleAvatar(
                          radius: 2.5,
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          textString.BottomChildlist,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 42.0),
                    child: Row(
                      children: const [
                        Icon(Icons.format_align_right_outlined, size: 8),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          textString.SubTextpara,
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Row(
                      children: const [
                        CircleAvatar(
                          radius: 2.5,
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          textString.BottomChildlist,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 42.0),
                    child: Row(
                      children: const [
                        Icon(Icons.format_align_right_outlined, size: 8),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          textString.SubTextpara,
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 30,
                    endIndent: 10,
                    thickness: 1,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                            radius: 5, backgroundColor: Colors.orange),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(textString.Bottommainlist2,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      SizedBox(
                        width: 215,
                      ),
                      Icon(Icons.star, color: Colors.orange),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: const [
                        Icon(Icons.format_align_right_outlined, size: 10),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          textString.SubTextpara,
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    indent: 30,
                    endIndent: 10,
                    thickness: 1,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                            radius: 5, backgroundColor: Colors.red),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(textString.Bottommainlist3,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      SizedBox(
                        width: 170,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: const [
                        Icon(Icons.format_align_right_outlined, size: 10),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          textString.SubTextpara,
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    indent: 30,
                    endIndent: 10,
                    thickness: 1,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                            radius: 5, backgroundColor: Colors.green),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(textString.Bottommainlist4,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      SizedBox(
                        width: 250,
                      ),
                      Icon(Icons.star, color: Colors.orange),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: const [
                        Icon(Icons.format_align_right_outlined, size: 10),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          textString.SubTextpara,
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    indent: 30,
                    endIndent: 10,
                    thickness: 1,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                            radius: 5, backgroundColor: Colors.purple),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(textString.Bottommainlist5,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      SizedBox(
                        width: 250,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: const [
                        Icon(Icons.format_align_right_outlined, size: 10),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          textString.SubTextpara,
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    indent: 30,
                    endIndent: 10,
                    thickness: 1,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                            radius: 5, backgroundColor: Colors.grey),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(textString.Bottommainlist6,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      SizedBox(
                        width: 250,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: const [
                        Icon(Icons.format_align_right_outlined, size: 10),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          textString.SubTextpara,
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 340,
                    height: 30,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.add),
                            Text('Add Project')
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
