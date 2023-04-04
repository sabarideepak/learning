import 'package:flutter/material.dart';
import 'config.dart';
import 'config_colour.dart';

class Gridview extends StatefulWidget {
  const Gridview({Key? key}) : super(key: key);

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
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
        title: const Text(getString.gridviewtitle),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ],
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.0,
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 1.0),
        children: [
          Container(
            child: Image.asset(
                'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
          ),
          Container(
            child: Image.asset(
                'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
          ),
          Container(
            child: Image.asset(
                'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
          ),
          Container(
            child: Image.asset(
                'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
          ),
          Container(
            child: Image.asset(
                'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
          ),
          Container(
            child: Image.asset(
                'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
          ),
          Container(
            child: Image.asset(
                'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
          ),
          Container(
            child: Image.asset(
                'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
          ),
          Container(
            child: Image.asset(
                'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
          ),
          Container(
            child: Image.asset(
                'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
          )
        ],
      ),
    );
  }
}
