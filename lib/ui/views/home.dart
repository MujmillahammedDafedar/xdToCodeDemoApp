import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nyx_test_app/core/buttons.dart';
import 'package:nyx_test_app/utils/constant/colors.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    print(_tabController!.index);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  var _lights = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/a/aa/bgimage.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 230.h,
                viewportFraction: 1,
              ),
              items: [1, 2, 3, 4, 5].map(
                (i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        height: 300.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.only(
                                bottomRight: Radius.circular(65.0),
                                bottomLeft: Radius.circular(65.0))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/a/aa/a.png",
                                  height: 60.h,
                                  width: 70.w,
                                ),
                                Image.asset(
                                  "assets/a/aa/a.png",
                                  height: 60.h,
                                  width: 70.w,
                                ),
                                Image.asset(
                                  "assets/a/aa/a.png",
                                  height: 60.h,
                                  width: 70.w,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/a/aa/a.png",
                                  height: 60.h,
                                  width: 70.w,
                                ),
                                Image.asset(
                                  "assets/a/aa/a.png",
                                  height: 60.h,
                                  width: 70.w,
                                ),
                                Image.asset(
                                  "assets/a/aa/a.png",
                                  height: 60.h,
                                  width: 70.w,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ).toList(),
            ),
            Container(
              height: 120.h,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                // border: Border(
                //   bottom: BorderSide(
                //     color: Colors.white,
                //     width: 5.0,
                //   ),
                // ),
                color: colorBlue,
                boxShadow: [
                  new BoxShadow(blurRadius: 20.0, spreadRadius: 3.0),
                ],
                borderRadius: new BorderRadius.vertical(
                  bottom: new Radius.elliptical(
                      MediaQuery.of(context).size.width, 100.0),
                ),
              ),
              child: Row(
                children: [
                  CutomeIconButton("assets/a/aa/menu.png"),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 43.w,
                    height: 43.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://avatars.githubusercontent.com/u/35305645?v=4'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.blue,
                        width: 3.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 27.0),
                    child: Column(
                      children: [
                        Text(
                          "John Doe",
                          style: TextStyle(
                              color: white,
                              fontFamily: "RifficFree",
                              fontSize: 12.sp),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/a/aa/x.png",
                                height: 20.h,
                                width: 25.w,
                              ),
                              Image.asset(
                                "assets/a/aa/10.png",
                                height: 20.h,
                                width: 25.w,
                              ),

                              // Icon(
                              //   Icons.star,
                              //   size: 25,
                              //   color: iconColor,
                              // ),
                              // Icon(
                              //   Icons.one_k,
                              //   color: iconColor,
                              //   size: 25,
                              // )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Column(
                      children: [
                        Text(
                          "Cash mode",
                          style: TextStyle(
                              color: white,
                              fontFamily: "RifficFree",
                              fontSize: 12.sp),
                        ),
                        // ListTile(
                        //   title: Text('Lights'),
                        //   trailing: CupertinoSwitch(
                        //     value: _lights,
                        //     onChanged: (bool value) {
                        //       _lights = value;
                        //       // setState(() {
                        //       //   _lights = value;
                        //       // });
                        //     },
                        //   ),
                        //   onTap: () {
                        //     // setState(() {
                        //     //   _lights = !_lights;
                        //     // });
                        //   },
                        // ),
                        Container(
                          height: 40.h,
                          width: 15.w,
                          child: Image.asset("assets/a/aa/cashmode.png"),
                        ),
                        Text(
                          "Free mode",
                          style: TextStyle(
                              color: white,
                              fontFamily: "RifficFree",
                              fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 60.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/a/aa/price.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        // child: Image.asset("assets/a/aa/price.png"),
                        child: Center(
                          child: Text(
                            "Rs. 2013",
                            style: TextStyle(
                                color: colorBlue,
                                fontFamily: "RifficFree",
                                fontSize: 14.sp),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 190.0),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  customCard(context, "Sports", "assets/a/aa/aab.png"),
                  customCard(context, "History", "assets/a/aa/aa.png"),
                  customCard(context, "Science", "assets/a/aa/aac.png"),
                  customCard(context, "Movie", "assets/a/aa/aa1.png")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 300.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Select Game mode",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: white,
                      fontFamily: "RifficFree",
                      fontSize: 20.sp,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 350.0),
              decoration: BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.blueAccent, width: 2.0),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                2.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          25.0,
                        ),
                      ),
                      child: TabBar(
                        isScrollable: true,
                        controller: _tabController,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          ),
                          color: redColor,
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(
                            text: 'Solo',
                          ),
                          Tab(
                            text: 'Verses',
                          ),
                          Tab(
                            text: 'Table',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                soloList(context),
                                soloList(context),
                                soloList(context),
                              ],
                            ),
                          ),
                          Center(
                            child: Text(
                              'Verses',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Verses 2',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget soloList(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Container(
          height: 100.h,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: white,
            border: Border.all(color: colorRed, width: 2.0),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Prize:",
                    style: TextStyle(
                      color: iconColor,
                      fontFamily: "RifficFree",
                      fontSize: 20.sp,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Rs.1500",
                    style: TextStyle(
                      color: iconColor,
                      fontFamily: "RifficFree",
                      fontSize: 21.sp,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    color: iconColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset:
                            Offset(2.0, 2.0), // shadow direction: bottom right
                      )
                    ],
                    border: Border.all(color: white, width: 4.0),
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  height: 200.h,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Entry: Rs. 75",
                          style: TextStyle(
                            color: colorYellow,
                            fontFamily: "RifficFree",
                            fontSize: 20.sp,
                          ),
                        ),
                        Container(
                          width: 80.w,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: white, width: 1.0),
                            ),
                          ),
                        ),
                        Text(
                          "Life lines: 0",
                          style: TextStyle(
                            color: white,
                            fontFamily: "RifficFree",
                            fontSize: 20.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget customCard(BuildContext context, String text, String image) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 100.w,
      height: 200.h,
      decoration: BoxDecoration(
          color: white, borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              "$image",
              height: 40.h,
              width: 40.w,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: colorBlue,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20.0))),
              child: Center(
                child: Text(
                  "$text",
                  style: TextStyle(
                      color: white, fontFamily: "RifficFree", fontSize: 14.sp),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
