import 'package:flutter/material.dart';
import 'package:mjeeauth5/screens/register.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget signUpButtom() {
    return RaisedButton(
      color: Colors.green.shade200,
      child: Text(
        'Sign Up',
        style: TextStyle(color: Colors.red.shade400),
      ),
      onPressed: () {
        print('Sign Up');
        MaterialPageRoute materialPageRoute =
            MaterialPageRoute(builder: (BuildContext context) => Register());
        Navigator.of(context).push(materialPageRoute);
      },
    );
  }

  Widget signInButtom() {
    return RaisedButton(
      color: Colors.green.shade200,
      child: Text(
        'Sign In',
        style: TextStyle(color: Colors.red.shade400),
      ),
      onPressed: () {},
    );
  }

  Widget showButtom() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        signInButtom(),
        SizedBox(width: 5.0),
        signUpButtom(),
      ],
    );
  }

  Widget showLogo() {
    return Container(
      width: 120.0,
      height: 120.0,
      child: Image.asset('images/logo.png'),
    );
  }

  Widget showAppName() {
    return Text(
      'Show App Name',
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        height: 2.0,
        color: Colors.blue.shade600,
        fontFamily: 'Pacifico',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(colors: [
          Colors.white12,
          Colors.yellow,
        ])),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showLogo(),
              showAppName(),
              showButtom(),
            ],
          ),
        ),
      )),
    );
  }
}
