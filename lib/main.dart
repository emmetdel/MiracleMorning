import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './screens/login.dart';
import './screens/sign_up.dart';

void main() => runApp(new MaterialApp(
      home: MiracleMorning(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => new Login(),
        '/signup': (BuildContext context) => new SignUp(),
      },
    ));

class MiracleMorning extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  checkIfLoggedIn(BuildContext context) async {
    FirebaseUser user = await _auth.currentUser();
    if (user != null) {
      Navigator.of(context).pushNamed('/signup');
    } else {
      Navigator.of(context).pushNamed('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Miracle Morning',
          style: TextStyle(fontSize: 35.0),
        ),
      ),
    );
  }
}
