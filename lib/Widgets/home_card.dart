import 'package:CommunityConnectivity/Theme/theme.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key key,
    this.backgroundColor,
    this.image,
    this.courses,
    this.title,
  }) : super(key: key);
  final String title;
  final String courses;
  final String image;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: backgroundColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                flex: 10,
                child: SizedBox(
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              title,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700,
                                  color: text),
                              // style: MyApp.style,
                            ),
                          ),
                          SizedBox(height: 1),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "$courses $title",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: text,
                                  fontSize: 15,
                                  letterSpacing: 0,
                                  wordSpacing: 1,
                                  height: 1.5),
                              // style: MyApp.style,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: SizedBox(height: 150, child: Image.asset(image)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
