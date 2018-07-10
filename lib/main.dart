import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import './screens/login.dart';
import './screens/sign_up.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/login': (BuildContext context) => new Login(),
      '/signup': (BuildContext context) => new SignUp()
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  checkIfLoggedIn() async {
    FirebaseUser user = await _auth.currentUser();
    if (user != null) {
      navigationPage("/signup");
    } else {
      navigationPage("/login");
    }
  }

  void navigationPage(String route) {
    Navigator.of(context).pushReplacementNamed(route);
  }

  @override
  void initState() {
    super.initState();
    checkIfLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text("Miracle Morning", style: TextStyle(fontSize: 35.0)),
      ),
    );
  }
}
