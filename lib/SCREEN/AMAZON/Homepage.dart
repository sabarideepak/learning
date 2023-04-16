import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'expansiontile.dart';

class AmzHomepage extends StatefulWidget {
  const AmzHomepage({Key? key}) : super(key: key);

  @override
  State<AmzHomepage> createState() => _AmzHomepageState();
}

class _AmzHomepageState extends State<AmzHomepage> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            backgroundColor: Colors.tealAccent,
            title: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    leading: Icon(Icons.search, color: Colors.black),
                    title: Text('Search Amazon.in',
                        style: TextStyle(color: Colors.grey)),
                    trailing: Icon(Icons.qr_code_scanner_outlined,
                        color: Colors.grey),
                  ),
                )
              ],
            ),
            actions: [
              Icon(
                Icons.mic_none_outlined,
                color: Colors.black,
              )
            ],
            centerTitle: true,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
                background: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        spreadRadius: 1,
                        color: Colors.cyanAccent,
                        blurRadius: 1)
                  ]),
                  width: double.infinity,
                  height: 40,
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.black,
                      ),
                      Text(
                        'Deliver to Tiruchirappalli 620005',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                )
              ],
            )),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              //first product list row
              Container(
                width: double.infinity,
                height: 70,
                color: Colors.white24,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsetsDirectional.all(8),
                                width: 70,
                                height: 50,
                                child: Image(
                                    image: AssetImage('assets/png/pngegg.png')),
                              ),
                              Text('Headset')
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsetsDirectional.all(8),
                                width: 70,
                                height: 50,
                                child: Image(
                                    image: AssetImage(
                                        'assets/png/pngegg (1).png')),
                              ),
                              Text('Charger')
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsetsDirectional.all(8),
                                width: 70,
                                height: 50,
                                child: Image(
                                    image: AssetImage(
                                        'assets/png/pngegg (2).png')),
                              ),
                              Text('Aux')
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsetsDirectional.all(8),
                                width: 70,
                                height: 50,
                                child: Image(
                                    image: AssetImage(
                                        'assets/png/pngegg (3).png')),
                              ),
                              Text('Tripod')
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsetsDirectional.all(8),
                                width: 70,
                                height: 50,
                                child: Image(
                                    image: AssetImage(
                                        'assets/png/pngegg (4).png')),
                              ),
                              Text('Iphone')
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsetsDirectional.all(8),
                                width: 70,
                                height: 50,
                                child: Image(
                                    image: AssetImage(
                                        'assets/png/pngegg (5).png')),
                              ),
                              Text('Spareparts')
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsetsDirectional.all(8),
                                width: 70,
                                height: 50,
                                child: Image(
                                    image: AssetImage(
                                        'assets/png/pngegg (6).png')),
                              ),
                              Text('System')
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsetsDirectional.all(8),
                                width: 70,
                                height: 50,
                                child: Image(
                                    image: AssetImage(
                                        'assets/png/pngegg (7).png')),
                              ),
                              Text('Software')
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsetsDirectional.all(8),
                                width: 70,
                                height: 50,
                                child: Image(
                                    image: AssetImage(
                                        'assets/png/pngegg (8).png')),
                              ),
                              Text('Laptops')
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsetsDirectional.all(8),
                                width: 70,
                                height: 50,
                                child: Image(
                                    image: AssetImage(
                                        'assets/png/pngegg (3).png')),
                              ),
                              Text('Tripods')
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsetsDirectional.all(8),
                                width: 70,
                                height: 50,
                                child: Image(
                                    image: AssetImage('assets/png/pngegg.png')),
                              ),
                              Text('Headset')
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsetsDirectional.all(8),
                                width: 70,
                                height: 50,
                                child: Image(
                                    image: AssetImage(
                                        'assets/png/pngegg (8).png')),
                              ),
                              Text('Laptops')
                            ],
                          ),
                        ]),
                  ],
                ),
              ),
              //Second product list pageview row
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.black12,
                child: PageView(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image(
                        image: AssetImage(
                            'assets/jpg/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
                        fit: BoxFit.cover),
                    Image(
                        image: AssetImage(
                            'assets/jpg/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
                        fit: BoxFit.cover),
                    Image(
                        image: AssetImage(
                            'assets/jpg/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
                        fit: BoxFit.cover),
                    Image(
                        image: AssetImage(
                            'assets/jpg/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
                        fit: BoxFit.cover),
                    Image(
                        image: AssetImage(
                            'assets/jpg/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
                        fit: BoxFit.cover),
                    Image(
                        image: AssetImage(
                            'assets/jpg/3d-illustration-workspace.jpg.pagespeed.ce.Fx4pca0q_y.jpg'),
                        fit: BoxFit.cover),
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: 6,
                effect: const JumpingDotEffect(
                  activeDotColor: Colors.teal,
                  dotColor: Colors.grey,
                  dotWidth: 8,
                  dotHeight: 8,
                ),
              ),
              Container(
                width: double.infinity,
                height: 170,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        color: Colors.white,
                                        shadows: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              spreadRadius: 1)
                                        ]),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        color: Colors.white,
                                        shadows: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              spreadRadius: 1)
                                        ]),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        color: Colors.white,
                                        shadows: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              spreadRadius: 1)
                                        ]),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        color: Colors.white,
                                        shadows: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              spreadRadius: 1)
                                        ]),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        color: Colors.white,
                                        shadows: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              spreadRadius: 1)
                                        ]),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        color: Colors.white,
                                        shadows: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              spreadRadius: 1)
                                        ]),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        color: Colors.white,
                                        shadows: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              spreadRadius: 1)
                                        ]),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/png/Amazonlogo.png')),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    'Amazon pay',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 120,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg.png')),
                                    ),
                                    Text('Headset')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (1).png')),
                                    ),
                                    Text('Charger')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (2).png')),
                                    ),
                                    Text('Aux')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (3).png')),
                                    ),
                                    Text('Tripod')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (4).png')),
                                    ),
                                    Text('Iphone')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (5).png')),
                                    ),
                                    Text('Spareparts')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (6).png')),
                                    ),
                                    Text('System')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (7).png')),
                                    ),
                                    Text('Software')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (8).png')),
                                    ),
                                    Text('Laptops')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (3).png')),
                                    ),
                                    Text('Tripods')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg.png')),
                                    ),
                                    Text('Headset')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (8).png')),
                                    ),
                                    Text('Laptops')
                                  ],
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 120,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg.png')),
                                    ),
                                    Text('Headset')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (1).png')),
                                    ),
                                    Text('Charger')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (2).png')),
                                    ),
                                    Text('Aux')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (3).png')),
                                    ),
                                    Text('Tripod')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (4).png')),
                                    ),
                                    Text('Iphone')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (5).png')),
                                    ),
                                    Text('Spareparts')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (6).png')),
                                    ),
                                    Text('System')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (7).png')),
                                    ),
                                    Text('Software')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (8).png')),
                                    ),
                                    Text('Laptops')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (3).png')),
                                    ),
                                    Text('Tripods')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg.png')),
                                    ),
                                    Text('Headset')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (8).png')),
                                    ),
                                    Text('Laptops')
                                  ],
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 120,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg.png')),
                                    ),
                                    Text('Headset')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (1).png')),
                                    ),
                                    Text('Charger')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (2).png')),
                                    ),
                                    Text('Aux')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (3).png')),
                                    ),
                                    Text('Tripod')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (4).png')),
                                    ),
                                    Text('Iphone')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (5).png')),
                                    ),
                                    Text('Spareparts')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (6).png')),
                                    ),
                                    Text('System')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (7).png')),
                                    ),
                                    Text('Software')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (8).png')),
                                    ),
                                    Text('Laptops')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (3).png')),
                                    ),
                                    Text('Tripods')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg.png')),
                                    ),
                                    Text('Headset')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (8).png')),
                                    ),
                                    Text('Laptops')
                                  ],
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 120,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg.png')),
                                    ),
                                    Text('Headset')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (1).png')),
                                    ),
                                    Text('Charger')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (2).png')),
                                    ),
                                    Text('Aux')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (3).png')),
                                    ),
                                    Text('Tripod')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (4).png')),
                                    ),
                                    Text('Iphone')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (5).png')),
                                    ),
                                    Text('Spareparts')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (6).png')),
                                    ),
                                    Text('System')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (7).png')),
                                    ),
                                    Text('Software')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (8).png')),
                                    ),
                                    Text('Laptops')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (3).png')),
                                    ),
                                    Text('Tripods')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg.png')),
                                    ),
                                    Text('Headset')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/png/pngegg (8).png')),
                                    ),
                                    Text('Laptops')
                                  ],
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

/*
appBar: AppBar(
backgroundColor: Colors.black,
title: Row(
children: [
Row(
children: [
Column(
children: [
Container(
width: 40,
height: 40,
child: Image(
image: AssetImage('assets/png/Amazonlogo.png'),
),
),
],
),
Column(
mainAxisAlignment: MainAxisAlignment.end,
children: [
Container(
child: const Padding(
padding: EdgeInsets.only(top: 8.0),
child: Icon(
Icons.location_on_outlined,
size: 20,
),
)),
],
),
Column(
crossAxisAlignment: CrossAxisAlignment.start,
textDirection: TextDirection.ltr,
children: const [
Text('Hello', style: TextStyle(fontSize: 10)),
Text('Select your address',
style: TextStyle(
fontSize: 10, fontWeight: FontWeight.bold)),
],
),
],
),
Padding(
padding: const EdgeInsets.only(left: 3.0),
child: Row(
children: [
Row(
children: [
Container(
width: 200,
height: 40,
decoration: const ShapeDecoration(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.only(
bottomLeft: Radius.circular(7),
topLeft: Radius.circular(7),
bottomRight: Radius.circular(7),
topRight: Radius.circular(7))),
color: Colors.white,
),
child: Stack(children: [
Container(
width: 50,
height: 40,
decoration: const ShapeDecoration(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.only(
topLeft: Radius.circular(7),
bottomLeft: Radius.circular(7)),
side: BorderSide(color: Colors.black12)),
color: Colors.white70,
),
child: Padding(
padding: const EdgeInsets.only(left: 6.0),
child: Row(
mainAxisAlignment:
MainAxisAlignment.spaceEvenly,
children: const [
Text('All',
style: TextStyle(
fontSize: 12, color: Colors.black)),
Icon(
Icons.arrow_drop_down,
color: Colors.black,
)
],
),
)),
const Center(
child: Padding(
padding: EdgeInsets.only(right: 20.0),
child: Text('Search Amazon.in',
style: TextStyle(
color: Colors.grey, fontSize: 10)),
),
),
Padding(
padding: EdgeInsets.only(left: 260.0),
child: Container(
width: 40,
height: 40,
decoration: const ShapeDecoration(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.only(
bottomRight: Radius.circular(7),
topRight: Radius.circular(7))),
color: Colors.orangeAccent,
),
child: Icon(Icons.search, color: Colors.black),
),
)
]),
),
],
)
],
),
),
],
),
actions: [],
),*/
