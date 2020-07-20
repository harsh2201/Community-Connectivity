import 'package:CommunityConnectivity/Theme/theme.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage(
      {Key key,
      this.backgroundColor,
      this.image,
      this.subTitle,
      this.title,
      this.isLast})
      : super(key: key);
  final String title;
  final String subTitle;
  final String image;
  final Color backgroundColor;
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: text),
                      // style: MyApp.style,
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 220,
                      child: Text(
                        subTitle,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: text,
                            fontSize: 20,
                            letterSpacing: 0,
                            wordSpacing: 1,
                            height: 1.5),
                        // style: MyApp.style,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0.0),
            ),
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
