import 'package:flutter/material.dart';

class Important extends StatelessWidget {
  const Important({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text('ROWS&COLUMN'),
        actions: [
          IconButton(
            icon: Icon(Icons.add_a_photo_sharp),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Image(
                      image: AssetImage(
                          'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg')),
                ),
                Expanded(
                  flex: 2,
                  child: Image(
                      image: AssetImage(
                          'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg')),
                ),
                Expanded(
                  child: Image(
                      image: AssetImage(
                          'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg')),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Image(
                      image: AssetImage(
                          'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg')),
                ),
                Expanded(
                  flex: 2,
                  child: Image(
                      image: AssetImage(
                          'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg')),
                ),
                Expanded(
                  child: Image(
                      image: AssetImage(
                          'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg')),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image(
                      image: AssetImage(
                          'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg')),
                ),
                Expanded(
                  flex: 2,
                  child: Image(
                      image: AssetImage(
                          'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg')),
                ),
                Expanded(
                  flex: 1,
                  child: Image(
                      image: AssetImage(
                          'images/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
