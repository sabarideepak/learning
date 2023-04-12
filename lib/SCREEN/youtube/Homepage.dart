import 'package:flutter/material.dart';
import 'package:learning/SCREEN/config_colour.dart';
import 'package:learning/SCREEN/youtube/add.dart';
import 'package:learning/SCREEN/youtube/library.dart';
import 'package:learning/SCREEN/youtube/shorts.dart';
import 'package:learning/SCREEN/youtube/subscriptions.dart';

import '../alertscreen.dart';
import '../appBar.dart';
import '../bottomImageUpload.dart';
import 'home.dart';

class UtubeHomepage extends StatefulWidget {
  const UtubeHomepage({Key? key}) : super(key: key);

  @override
  State<UtubeHomepage> createState() => _UtubeHomepageState();
}

class _UtubeHomepageState extends State<UtubeHomepage> {
  List Screen = [Home1(), Shorts2(), Add3(), Subscriptions4(), Library5()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          // fixedColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          backgroundColor: Colors.black,
          //selectedItemColor: Coloursheet.whiteColour,
          /* selectedIconTheme: const IconThemeData(
            color: Colors.black,
          ),*/
          currentIndex: selectedIndex,
          onTap: (Screen) {
            setState(() {
              selectedIndex = Screen;
            });
          },
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.home_filled),
              activeIcon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.amp_stories),
                label: 'Stories'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_circle_outline_sharp, size: 50)),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.saved_search),
                label: 'Search'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.account_circle_sharp),
                label: 'My Profile'),
          ]),
      body: Screen[selectedIndex],
    );
  }
}
