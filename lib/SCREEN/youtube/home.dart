import 'package:flutter/material.dart';

import '../config_colour.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Coloursheet.blackColour),
          automaticallyImplyLeading: true,
          backgroundColor: Coloursheet.whiteColour,
          title: Container(
            width: 100,
            child: Image.asset(
              'assets/png/youtube-logo-png-46020.png',
              fit: BoxFit.fill,
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.cast,
                          size: 25,
                        ),
                        Icon(Icons.notifications_none, size: 25),
                        Icon(Icons.search, size: 25),
                        Icon(Icons.account_circle_sharp, size: 25)
                      ]),
                )
              ],
            )
          ],
          bottom: TabBar(isScrollable: true, tabs: [
            Tab(
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Coloursheet.blackColour),
                      ),
                      child: const Text(
                        'All',
                        style: TextStyle(color: Coloursheet.whiteColour),
                      )),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.grey),
                      ),
                      child: const Text(
                        'Hits',
                        style: TextStyle(color: Coloursheet.blackColour),
                      )),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.grey),
                      ),
                      child: const Text(
                        'Modern',
                        style: TextStyle(color: Coloursheet.blackColour),
                      )),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.grey),
                      ),
                      child: const Text(
                        'New',
                        style: TextStyle(color: Coloursheet.blackColour),
                      )),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.grey),
                      ),
                      child: const Text(
                        'Trending',
                        style: TextStyle(color: Coloursheet.blackColour),
                      )),
                ],
              ),
            )
          ]),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              ListTile(
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.menu)),
                title: Container(
                  width: 70,
                  height: 70,
                  child: const Image(
                      image:
                          AssetImage('assets/png/youtube-logo-png-46020.png'),
                      alignment: Alignment.centerLeft),
                ),
              ),
              Column(
                children: [
                  ListTile(
                      leading: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home_filled,
                            color: Colors.black,
                          )),
                      title: Text(
                        'Home',
                        style: TextStyle(color: Colors.black),
                      )),
                  ListTile(
                      leading: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.amp_stories,
                            color: Colors.black,
                          )),
                      title: Text(
                        'Stories',
                        style: TextStyle(color: Colors.black),
                      )),
                  ListTile(
                      leading: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          )),
                      title: Text(
                        'Search',
                        style: TextStyle(color: Colors.black),
                      )),
                  ListTile(
                      leading: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home_filled,
                            color: Colors.black,
                          )),
                      title: Text(
                        'Home',
                        style: TextStyle(color: Colors.black),
                      )),
                  Divider(),
                  ListTile(
                      leading: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.amp_stories,
                            color: Colors.black,
                          )),
                      title: Text(
                        'Stories',
                        style: TextStyle(color: Colors.black),
                      )),
                  ListTile(
                      leading: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          )),
                      title: Text(
                        'Search',
                        style: TextStyle(color: Colors.black),
                      )),
                  ListTile(
                      leading: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home_filled,
                            color: Colors.black,
                          )),
                      title: Text(
                        'Home',
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          Container(
                            width: 50,
                            height: 20,
                            child: Center(
                              child: Text('12:30',
                                  style: TextStyle(color: Colors.white)),
                            ),
                            color: Colors.black,
                          )
                        ]),
                      ),
                      height: 250,
                      width: 475,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          color: Colors.black,
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/jpg/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
                              fit: BoxFit.fitWidth)),
                    ),
                    const ListTile(
                      leading: CircleAvatar(
                          child: Image(
                              image: AssetImage('assets/png/freckles.png'))),
                      title:
                          Text("SUBJECT OF THE VIDEO AND TOPIC OF THE VIDEO"),
                      subtitle: Text('CHANNEL NAME OF THE YOUTUBER',
                          textDirection: TextDirection.ltr),
                      trailing: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 5,
              ),
              Container(
                child: const ListTile(
                  leading: Image(
                      image: AssetImage('assets/png/youtube-shorts-icon.png')),
                  title: Text("Shorts",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: Icon(
                    Icons.cancel_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                height: 400,
                width: 400,
                child: GridView(
                  padding: const EdgeInsets.all(10.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0),
                  children: [
                    Container(
                      child: Image.asset(
                          'assets/jpg/them-snapshots-nDCsrhWRRDI-unsplash.jpg'),
                    ),
                    Container(
                      child: Image.asset(
                          'assets/jpg/them-snapshots-40U4YEffPgE-unsplash.jpg'),
                    ),
                    Container(
                        child: const Image(
                      image: NetworkImage(
                          'assets/jpg/them-snapshots-40U4YEffPgE-unsplash.jpg'),
                    )),
                    Container(
                      child: Image.asset(
                          'assets/jpg/them-snapshots-40U4YEffPgE-unsplash.jpg'),
                    ),
                    Container(
                      child: Image.asset(
                          'assets/jpg/them-snapshots-40U4YEffPgE-unsplash.jpg'),
                    ),
                    Container(
                      child: Image.asset(
                          'assets/jpg/them-snapshots-40U4YEffPgE-unsplash.jpg'),
                    ),
                    Container(
                      child: Image.asset(
                          'assets/jpg/them-snapshots-nDCsrhWRRDI-unsplash.jpg'),
                    ),
                    Container(
                      child: Image.asset(
                          'assets/jpg/them-snapshots-nDCsrhWRRDI-unsplash.jpg'),
                    ),
                    Container(
                      child: Image.asset(
                          'assets/jpg/them-snapshots-nDCsrhWRRDI-unsplash.jpg'),
                    ),
                    Container(
                      child: Image.asset(
                          'assets/jpg/them-snapshots-nDCsrhWRRDI-unsplash.jpg'),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          Container(
                            width: 50,
                            height: 20,
                            child: Center(
                              child: Text('10:00',
                                  style: TextStyle(color: Colors.white)),
                            ),
                            color: Colors.black,
                          )
                        ]),
                      ),
                      height: 250,
                      width: 475,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          color: Colors.black,
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/jpg/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
                              fit: BoxFit.fitWidth)),
                    ),
                    const ListTile(
                      leading: CircleAvatar(
                        child: Image(image: AssetImage('assets/png/hair.png')),
                      ),
                      title:
                          Text("SUBJECT OF THE VIDEO AND TOPIC OF THE VIDEO"),
                      subtitle: Text('CHANNEL NAME OF THE YOUTUBER',
                          textDirection: TextDirection.ltr),
                      trailing: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          Container(
                            width: 50,
                            height: 20,
                            child: Center(
                              child: Text('45:20',
                                  style: TextStyle(color: Colors.white)),
                            ),
                            color: Colors.black,
                          )
                        ]),
                      ),
                      height: 250,
                      width: 475,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          color: Colors.black,
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/jpg/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
                              fit: BoxFit.fitWidth)),
                    ),
                    const ListTile(
                      leading: CircleAvatar(
                        child:
                            Image(image: AssetImage('assets/png/profile.png')),
                      ),
                      title:
                          Text("SUBJECT OF THE VIDEO AND TOPIC OF THE VIDEO"),
                      subtitle: Text('CHANNEL NAME OF THE YOUTUBER',
                          textDirection: TextDirection.ltr),
                      trailing: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          Container(
                            width: 50,
                            height: 20,
                            child: Center(
                              child: Text('5:00',
                                  style: TextStyle(color: Colors.white)),
                            ),
                            color: Colors.black,
                          )
                        ]),
                      ),
                      height: 250,
                      width: 475,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          color: Colors.black,
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/jpg/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
                              fit: BoxFit.fitWidth)),
                    ),
                    const ListTile(
                      leading: CircleAvatar(
                          child: Image(
                              image: AssetImage('assets/png/freckles.png'))),
                      title:
                          Text("SUBJECT OF THE VIDEO AND TOPIC OF THE VIDEO"),
                      subtitle: Text('CHANNEL NAME OF THE YOUTUBER',
                          textDirection: TextDirection.ltr),
                      trailing: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
