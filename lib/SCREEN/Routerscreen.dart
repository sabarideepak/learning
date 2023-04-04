import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../main1.dart';
import 'Listviewseparator.dart';
import 'Row.dart';
import 'appBar.dart';
import 'column.dart';
import 'gridview.dart';
import 'listview.dart';
import 'listviewbuilder.dart';

class Routerclass {
  static const String Mainpage = '/';
  static const String appBar = 'firstscreen';
  static const String Row = 'Rowscreen';
  static const String Column = 'Columnscreen';
  static const String ListviewBtn = 'listviewButton';
  static const String ListviewBuilderBtn = 'listviewBuilderButton';
  static const String ListviewSeparatorBtn = 'listviewSeparatorButton';
  static const String Gridviewbtn = 'gridviewButton';

  static Map<String, WidgetBuilder> navirout() {
    return {
      Routerclass.Mainpage: (context) => const Appbar(),
      Routerclass.Row: (context) => const Row1(),
      Routerclass.Column: (context) => const Column1(),
      Routerclass.ListviewBtn: (context) => const Listview(),
      Routerclass.ListviewBuilderBtn: (context) => const ListviewBuilder(),
      Routerclass.ListviewSeparatorBtn: (context) => const ListviewSeparator(),
      Routerclass.Gridviewbtn: (context) => const Gridview(),
    };
  }
}
