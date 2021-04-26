import 'package:flutter/material.dart';
import 'package:akawo_app/pages/loading_page.dart';
import 'package:otp_screen/otp_screen.dart';

void main(){

  runApp(new MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.transparent,

    ),
    home: new AkawoApp(),
  ));
}
class AkawoApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AkawoAppState createState() => _AkawoAppState();
}

class _AkawoAppState extends State<AkawoApp> {
// logic to validate otp return [null] when success else error [String]
  Future<String> validateOtp(String otp) async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (otp == "1234") {
      return null;
    } else {
      return "The entered Otp is wrong";
    }
  }

  // action to be performed after OTP validation is success
  void moveToNextScreen(context) {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => LoadingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialize the OTP screen by passing validation logic and route callback
      home: OtpScreen(
        otpLength: 4,
        validateOtp: validateOtp,
        routeCallback: moveToNextScreen,
        titleColor: Colors.black,
        themeColor: Colors.black,
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:akawo_app/pages/loading_page.dart';
//
// void main(){
//
//   runApp(new MaterialApp(
//     theme: ThemeData(scaffoldBackgroundColor: Colors.transparent,
//
//     ),
//     home: new AkawoApp(),
//   ));
// }
// class AkawoApp extends StatefulWidget {
//   // This widget is the root of your application.
//   @override
//   _AkawoAppState createState() => _AkawoAppState();
// }
//
// class _AkawoAppState extends State<AkawoApp> {
//   @override
//   Widget build(BuildContext context) {
//     return LoadingPage().build(context);
//   }
// }
