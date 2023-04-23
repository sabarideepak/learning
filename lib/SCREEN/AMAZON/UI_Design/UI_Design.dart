import 'package:flutter/material.dart';
import 'config.dart';
import 'package:learning/SCREEN/config_colour.dart';
import 'Active.dart';
import 'Archived.dart';

class UI_Design extends StatefulWidget {
  const UI_Design({Key? key}) : super(key: key);

  @override
  State<UI_Design> createState() => _UI_DesignState();
}

class _UI_DesignState extends State<UI_Design> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: CircleAvatar(
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
            toolbarHeight: 30.0,
            centerTitle: false,
            backgroundColor: Coloursheet.whiteColour,
            title: const Text('Project lists',
                style: TextStyle(color: Colors.black)),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  color: Colors.black),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                  color: Colors.black),
            ],
            bottom: PreferredSize(
              preferredSize: const Size(50, 50),
              child: Align(
                child: TabBar(
                  indicatorColor: Coloursheet.blueColour,
                  isScrollable: true,
                  unselectedLabelStyle: const TextStyle(color: Colors.grey),
                  tabs: [
                    Container(
                      width: 150,
                      child: Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Active',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      child: Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Archived',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
            //PreferredSize(child: Container(), preferredSize: Size(30, 50)),
            ),
        body: TabBarView(children: [
          Container(
            child: const Active(),
          ),
          Container(
            child: const Archived(),
          ),
        ]),
        bottomNavigationBar: BottomAppBar(
          elevation: 30,
          shape: const CircularNotchedRectangle(),
          height: 60.0,
          color: Coloursheet.whiteColour,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu_book,
                          size: 30.0,
                          color: Colors.blue,
                        )),
                    const Text(textString.BottomIcon1,
                        style: TextStyle(
                            fontSize: 10.0, color: Coloursheet.greyColour)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_time,
                          color: Colors.orange,
                          size: 30.0,
                        )),
                    const Text(textString.BottomIcon2,
                        style: TextStyle(
                            fontSize: 10.0, color: Coloursheet.greyColour)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.calendar_today_outlined,
                          color: Colors.green,
                          size: 30.0,
                        )),
                    const Text(textString.BottomIcon3,
                        style: TextStyle(
                            fontSize: 10.0, color: Coloursheet.greyColour)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.sailing_outlined,
                          color: Colors.red,
                          size: 30.0,
                        )),
                    const Text(textString.BottomIcon4,
                        style: TextStyle(
                            fontSize: 10.0, color: Coloursheet.greyColour)),
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
