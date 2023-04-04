import 'package:flutter/material.dart';
import 'package:learning/SCREEN/appBar.dart';
import 'package:learning/SCREEN/config_colour.dart';
import 'Routerscreen.dart';
import 'config.dart';

class Column1 extends StatefulWidget {
  const Column1({Key? key}) : super(key: key);

  @override
  State<Column1> createState() => _RowState();
}

class _RowState extends State<Column1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        centerTitle: true,
        flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
              Coloursheet.redColour,
              Coloursheet.blackColour,
              Coloursheet.redColour
            ]))),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0))),
        backgroundColor: Coloursheet.redColour,
        title: const Text(getString.appbarTitle),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ],
        /* bottom: TabBar(
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: [
                Tab(
                  child: Row(
                    children: [
                      Icon(Icons.account_circle),
                      Text('Contact'),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [Icon(Icons.call), Text('calls')],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [Icon(Icons.video_call), Text('videocalls')],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [Icon(Icons.history), Text('calls history')],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Icon(Icons.access_time_filled_sharp),
                      Text('status')
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Icon(Icons.add_circle_outlined),
                      Text('Add contact')
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [Icon(Icons.all_inbox), Text('Allchats')],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [Icon(Icons.fast_forward), Text('forward')],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [Icon(Icons.favorite), Text('favourite')],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [Icon(Icons.delete), Text('delete')],
                  ),
                ),
              ],
            )*/
        //PreferredSize(child: Container(), preferredSize: Size(30, 50)),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Coloursheet.greyColour,
                width: 180,
                height: 30,
                child: const Center(
                  child: Text(getString.column,
                      style: TextStyle(
                          color: Coloursheet.blackColour,
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                ),
              ),
              Container(
                width: 100,
                height: 30,
                decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    color: Coloursheet.pinkAccentColour),
                child: ElevatedButton(
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(100, 20))),
                    onPressed: () {
                      Navigator.popAndPushNamed(context, Routerclass.appBar);
                      // Navigator.pop(context);
                    },
                    child: const Text(getString.back,
                        style: TextStyle(color: Coloursheet.whiteColour))),
              ),
              Container(
                width: 100,
                height: 30,
                decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    color: Coloursheet.pinkAccentColour),
                child: Center(
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(100, 20))),
                        onPressed: () {
                          Navigator.pushNamed(context, Routerclass.Mainpage);
                          /*  Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const Appbar();
                            },
                          ));*/
                        },
                        child: const Text(getString.home,
                            style: TextStyle(color: Coloursheet.whiteColour)))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
