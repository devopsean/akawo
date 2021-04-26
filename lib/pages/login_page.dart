import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

enum userAction { active, inactive }

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  userAction selectedAction;

  @override
  Widget build(BuildContext context) {
    print('loaded niggas');
    return Scaffold(
      //extendBodyBehindAppBar: false,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage('images/login_page_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding:
            EdgeInsets.only(top: 0.0, left: 0.0, right: 0.0, bottom:0.0),
       constraints: BoxConstraints.expand(),
        child: Container(padding: EdgeInsets.all(25.0),
          child: FlutterLogin(
            //onLogin: _signIn, onSignup: _registerUser,

            onRecoverPassword: (_) => null,
           title: null,
            theme: LoginTheme(
              pageColorDark: Colors.transparent,
              pageColorLight: Colors.transparent,
              //bastard button that refused to change color
              buttonTheme: LoginButtonTheme(
                highlightColor: Colors.blue,
                backgroundColor: Colors.deepPurple,
              ),
              textFieldStyle: TextStyle(color: Colors.green),
            ),
          ),
        ),
      ),
    );
  }
}
