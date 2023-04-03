import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../main1.dart';
import 'Row.dart';
import 'appBar.dart';
import 'column.dart';

class Routerclass {
  static const String Mainpage = '/';
  static const String appBar = 'firstscreen';
  static const String Row = 'Rowscreen';
  static const String Column = 'Columnscreen';

  static Map<String, WidgetBuilder> navirout() {
    return {
      Routerclass.Mainpage: (context) => const Appbar(),
      Routerclass.appBar: (context) => const Row1(),
      Routerclass.Row: (context) => const Column1(),
    };
  }
}
