import 'package:CommunityConnectivity/Theme/theme.dart';
import 'package:CommunityConnectivity/Widgets/home_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/menu.png",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Hey David👋,",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                        // style: MyApp.style,
                      ),
                    ),
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Find something that interests you",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: textSubtitle,
                            fontSize: 15,
                            letterSpacing: 0,
                            wordSpacing: 1,
                            height: 1.5),
                        // style: MyApp.style,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                          color: searchBackground,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.search),
                                  onPressed: () {},
                                ),
                                Text("Search"),
                              ],
                            ),
                          ),
                          IconButton(icon: Icon(Icons.close), onPressed: null)
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Categories",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: textSubtitle),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    HomeCard(
                      backgroundColor: coursesBackground,
                      courses: "21",
                      image: "assets/images/courses.png",
                      title: "Courses",
                    ),
                    SizedBox(height: 10),
                    HomeCard(
                      backgroundColor: moviesBackground,
                      courses: "1000",
                      image: "assets/images/movies.png",
                      title: "Movies",
                    ),
                    SizedBox(height: 10),
                    HomeCard(
                      backgroundColor: musicBackground,
                      courses: "25",
                      image: "assets/images/music.png",
                      title: "Music",
                    ),
                    SizedBox(height: 10),
                    HomeCard(
                      backgroundColor: workoutsBackground,
                      courses: "50",
                      image: "assets/images/workouts.png",
                      title: "Workouts",
                    ),
                    SizedBox(height: 15),
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
