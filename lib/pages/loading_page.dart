import 'package:akawo_app/main.dart';
import 'package:akawo_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:akawo_app/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingPage extends State<AkawoApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff693f8e),
      ),
      child: Stack(alignment: Alignment.center, children: <Widget>[
        Positioned(
          child: new SplashScreen(
            seconds: 1,
            navigateAfterSeconds:
                new LoginPage(), // Where to navigate after 10 secs
          ),
        ),
        Positioned(
          top: 400.0,
          child: Container(
            width: 380.0,
            // decoration: BoxDecoration(color: Colors.green),
            child: Center(
              child: Text(
                'buy food at discounted prices!',textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.clip,
                style: TextStyle(color: Colors.white, fontSize: 15, decoration: TextDecoration.none),
              ),
            ),
          ),
        ),
        Positioned(
          child: Container(
            child: Image(
              image: AssetImage('images/akawo_logo.png'),
            ),
          ),
        )
      ]),
    );
  }
}
