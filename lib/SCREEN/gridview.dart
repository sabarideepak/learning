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
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10.0, mainAxisSpacing: 10.0),
        children: [
          Container(
            child: Image.asset(
                'assets/jpg/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
          ),
          Container(
            child: Image.asset('assets/jpg/fedor-PtW4RywQV4s-unsplash.jpg'),
          ),
          Container(
              child: const Image(
            image: NetworkImage(
                'https://fastly.picsum.photos/id/331/200/200.jpg?hmac=otNh1Xx2hk_Tng_SFa60ayddRGORvWnDKJ2wG1l0KIE'),
          )),
          Container(
            child: Image.asset('assets/jpg/fedor-PtW4RywQV4s-unsplash.jpg'),
          ),
          Container(
            child: Image.asset(
                'assets/jpg/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
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
                'assets/jpg/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
          ),
          Container(
            child: Image.asset(
                'assets/jpg/them-snapshots-nDCsrhWRRDI-unsplash.jpg'),
          ),
          Container(
            child: Image.asset('assets/jpg/fedor-PtW4RywQV4s-unsplash.jpg'),
          ),
        ],
      ),
    );
  }
}
