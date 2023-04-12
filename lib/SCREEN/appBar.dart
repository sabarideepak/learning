import 'package:flutter/material.dart';
import 'package:learning/SCREEN/Button.dart';
import 'package:learning/SCREEN/Row.dart';
import 'package:learning/SCREEN/column.dart';
import 'package:learning/SCREEN/config.dart';
import 'package:learning/SCREEN/config_colour.dart';
import 'package:learning/SCREEN/statusscreen.dart';
import 'package:learning/SCREEN/videocallsscreen.dart';
import 'Routerscreen.dart';
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
            title: Text(getString.appbarTitle),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            ],
            bottom: TabBar(
              indicatorColor: Coloursheet.whiteColour,
              isScrollable: true,
              tabs: [
                Tab(
                  child: Row(
                    children: const [
                      Icon(Icons.account_circle),
                      Text(getString.tabbarContact),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: const [
                      Icon(Icons.call),
                      Text(getString.tabbarcalls)
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: const [
                      Icon(Icons.video_call),
                      Text(getString.tabbarvideocalls)
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: const [
                      Icon(Icons.history),
                      Text(getString.tabbarcallshistory)
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: const [
                      Icon(Icons.access_time_filled_sharp),
                      Text(getString.tabbarstatus)
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: const [
                      Icon(Icons.add_circle_outlined),
                      Text(getString.tabbarAddcontact)
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: const [
                      Icon(Icons.all_inbox),
                      Text(getString.tabbarAllchats)
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: const [
                      Icon(Icons.fast_forward),
                      Text(getString.tabbarforward)
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: const [
                      Icon(Icons.favorite),
                      Text(getString.tabbarfavourite)
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: const [
                      Icon(Icons.delete),
                      Text(getString.tabbardelete)
                    ],
                  ),
                ),
              ],
            )
            //PreferredSize(child: Container(), preferredSize: Size(30, 50)),
            ),
        drawer: Drawer(
          backgroundColor: Coloursheet.whiteColour,
          elevation: 30,
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text(getString.drawerAccountname),
                accountEmail: Text(getString.drawerAccountEmail),
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
                title: const Text(getString.listtileTitleInbox),
                trailing: const Text(getString.trailingTitle100,
                    style: TextStyle(
                        color: Coloursheet.redColour,
                        fontWeight: FontWeight.bold)),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.mail),
                iconColor: Coloursheet.greenColour,
                title: const Text(getString.listtileTitlePrimary),
                trailing: const Text(getString.trailingTitle1000,
                    style: TextStyle(
                        color: Coloursheet.redColour,
                        fontWeight: FontWeight.bold)),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.send),
                iconColor: Coloursheet.lightBlueAccent,
                title: const Text(getString.listtileTitleSent),
                trailing: const Text(getString.trailingTitleDraft1,
                    style: TextStyle(
                        color: Coloursheet.redColour,
                        fontWeight: FontWeight.bold)),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.delete),
                title: const Text(getString.listtileTitleTrash),
                iconColor: Coloursheet.blackColour,
                trailing: const Icon(Icons.delete_forever),
                hoverColor: Coloursheet.redColour,
              ),
              ExpansionTile(
                title: const Text(getString.expansionTitle),
                children: [
                  ListTile(
                      leading: ElevatedButton(
                          style: const ButtonStyle(
                              fixedSize:
                                  MaterialStatePropertyAll(Size(200, 30))),
                          onPressed: () {
                            Navigator.pushNamed(context, Routerclass.Row);
                            /*Navigator.push(context, MaterialPageRoute(----------inline navigation
                              builder: (context) {
                                return const Row1();
                              },
                            ));*/
                          },
                          child: const Text(getString.row))),
                  ListTile(
                      leading: ElevatedButton(
                          style: const ButtonStyle(
                              fixedSize:
                                  MaterialStatePropertyAll(Size(200, 30))),
                          onPressed: () {
                            Navigator.pushNamed(context, Routerclass.Column);
                            /*Navigator.push(context, MaterialPageRoute(-----inline push navigation
                              builder: (context) {
                                return const Column1();
                              },
                            ));*/
                          },
                          child: const Text(getString.column))),
                ],
              ),
              ExpansionTile(
                childrenPadding: const EdgeInsets.all(10),
                title: const Text('ListViews'),
                expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routerclass.ListviewBtn);
                      },
                      child: const Text(getString.listviewBtnName),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, Routerclass.ListviewBuilderBtn);
                      },
                      child: const Text(getString.listviewBuilderBtnName),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, Routerclass.ListviewSeparatorBtn);
                      },
                      child: const Text(getString.listviewSeparatedBtnName),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routerclass.Gridviewbtn);
                      },
                      child: const Text(getString.gridviewbtnname),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, Routerclass.Gridviewbuilderbtn);
                      },
                      child: const Text(getString.gridviewBuilderbtnname),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routerclass.AlertBtn);
                      },
                      child: const Text(getString.Alertscreen),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, Routerclass.BottomImageUploadBtn);
                      },
                      child: const Text(getString.BottomImageUpload),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, Routerclass.UtubeHomepagebtn);
                      },
                      child: const Text(getString.Utubehomepagebtn),
                    ),
                  )
                ],
              ),
            ],
          ),
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
          height: 82.0,
          color: Coloursheet.redColour,
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                  Coloursheet.redColour,
                  Coloursheet.blackColour,
                  Coloursheet.redColour
                ])),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                        backgroundColor: Coloursheet.blueGrey,
                        onPressed: () {},
                        child: const Icon(
                          Icons.account_circle,
                          size: 30.0,
                        )),
                    const Text(getString.btm_nav_PROFILE,
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Coloursheet.whiteColour)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                        backgroundColor: Coloursheet.blueGrey,
                        onPressed: () {},
                        child: const Icon(
                          Icons.add_a_photo_sharp,
                          size: 30.0,
                        )),
                    const Text(getString.btm_nav_CAMERA,
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Coloursheet.whiteColour)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                        backgroundColor: Coloursheet.blueGrey,
                        onPressed: () {},
                        child: const Icon(
                          Icons.home,
                          size: 30.0,
                        )),
                    const Text(getString.home,
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Coloursheet.whiteColour)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
