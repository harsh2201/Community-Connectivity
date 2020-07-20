import 'dart:math';

import 'package:CommunityConnectivity/Theme/theme.dart';
import 'package:CommunityConnectivity/Widgets/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Intro extends StatefulWidget {
  static final style = TextStyle(
    fontSize: 30,
    fontFamily: "Billy",
    fontWeight: FontWeight.w600,
  );
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  int page = 0;

  var pages = [
    Container(
      child: IntroPage(
          title: "Courses",
          subTitle: "Find your course and start learning",
          image: 'assets/images/courses.png',
          backgroundColor: coursesBackground),
    ),
    Container(
      child: IntroPage(
          title: "Streaming",
          subTitle: "Enjoy your favourite shows and movies",
          image: 'assets/images/movies.png',
          backgroundColor: moviesBackground),
    ),
    Container(
      child: IntroPage(
          title: "Music",
          subTitle: "Learn your favourite instruments with experts",
          image: 'assets/images/music.png',
          backgroundColor: musicBackground),
    ),
    Container(
      child: IntroPage(
        title: "Workouts",
        subTitle: "Find your trainer start being healthy",
        image: 'assets/images/workouts.png',
        backgroundColor: workoutsBackground,
        isLast: true,
      ),
    ),
  ];

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((page ?? 0) - index).abs(),
      ),
    );
    double zoom = 1.0 + (2.0 - 1.0) * selectedness;
    return new Container(
      width: 25.0,
      child: new Center(
        child: new Material(
          color: Colors.white,
          type: MaterialType.circle,
          child: new Container(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: page == 3
          ? FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/home");
              },
              backgroundColor: fab,
              child: Icon(Icons.done),
              heroTag: "tag1",
            )
          : Container(),
      body: Stack(
        children: <Widget>[
          LiquidSwipe(
            pages: pages,
            fullTransitionValue: 200,
            enableSlideIcon: true,
            enableLoop: true,
            positionSlideIcon: 0.5,
            onPageChangeCallback: pageChangeCallback,
            currentUpdateTypeCallback: updateTypeCallback,
            waveType: WaveType.liquidReveal,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Expanded(child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(4, _buildDot),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  pageChangeCallback(int lpage) {
    print(lpage);
    setState(() {
      page = lpage;
    });
  }

  updateTypeCallback(UpdateType updateType) {
    print(updateType);
  }
}
