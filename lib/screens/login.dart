import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  String _password;
  String _email;

  void submitForm() {
    print(this._password);
    print(this._email);
  }

  @override
  Widget build(BuildContext context) {
    final topLogo = Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Center(
          child: Text("Miracle Morning", style: TextStyle(fontSize: 35.0))),
    );

    // Email
    final email = TextFormField(
      onSaved: (String newEmail) {
        setState(() {
          _email = newEmail;
        });
      },
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: TextFormField(
        onSaved: (String newPassword) {
          setState(() {
            _password = newPassword;
          });
        },
        autofocus: false,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            this.submitForm();
          },
          color: Colors.lightBlueAccent,
          child: Text('Log In', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final registerButton = Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: FlatButton(
        child: Text(
          'Not Registered?',
          style: TextStyle(color: Colors.black54),
        ),
        onPressed: () {},
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: this._formKey,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              topLogo,
              email,
              password,
              loginButton,
              registerButton
            ],
          ),
        ),
      ),
    );
  }
}
