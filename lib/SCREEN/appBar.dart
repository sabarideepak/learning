import 'package:flutter/material.dart';
import 'package:learning/SCREEN/statusscreen.dart';
import 'package:learning/SCREEN/videocallsscreen.dart';
import 'addcontactscreen.dart';
import 'allchats.dart';
import 'callscreen.dart';
import 'callshistoryscreen.dart';
import 'contactscreen.dart';
import 'deletescreen.dart';
import 'favouritescreen.dart';
import 'forwardscreen.dart';

class Appbar extends StatefulWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 50.0,
            centerTitle: true,
            flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                  Colors.red,
                  Colors.black,
                  Colors.red
                ]))),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0))),
            backgroundColor: Colors.red,
            title: Text('Appbar'),
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            ],
            bottom: TabBar(
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
            )
            //PreferredSize(child: Container(), preferredSize: Size(30, 50)),
            ),
        body: TabBarView(children: [
          Container(
            child: Contact(),
          ),
          Container(
            child: Calls(),
          ),
          Container(
            child: Videocalls(),
          ),
          Container(
            child: Callshistory(),
          ),
          Container(
            child: Status(),
          ),
          Container(
            child: Addcontact(),
          ),
          Container(
            child: Allchats(),
          ),
          Container(
            child: Forward(),
          ),
          Container(
            child: Favourite(),
          ),
          Container(
            child: Delete(),
          ),
        ]),
        bottomNavigationBar: BottomAppBar(
          shape: null,
          height: 80.0,
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {},
                      child: const Icon(
                        Icons.account_circle,
                        size: 40.0,
                      )),
                  const Text('PROFILE',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {},
                      child: const Icon(
                        Icons.add_a_photo_sharp,
                        size: 40.0,
                      )),
                  const Text('CAMERA',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {},
                      child: const Icon(
                        Icons.home,
                        size: 40.0,
                      )),
                  const Text('HOME',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
