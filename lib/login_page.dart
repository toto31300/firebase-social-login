import 'package:flutter/material.dart';
import 'package:social_login/sign_in.dart';


class LoginPage extends StatefulWidget {

  final Widget firstScreen ;

  const LoginPage(this.firstScreen);
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: 150),
              SizedBox(height: 50),
              _signInButton(widget.firstScreen),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInButton(Widget firstScreen) {
    return OutlinedButton(
      onPressed: () {
        signInWithGoogle().then((result) {
          if (result != null) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return firstScreen;
                },
              ),
            );
          }
        });
      },
      style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.grey),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)),
          elevation: 0,
          onSurface: Colors.grey
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
