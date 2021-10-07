import 'package:flutter/material.dart';

class AuthenticateForm extends StatefulWidget {
  @override
  _AuthenticateFormState createState() => _AuthenticateFormState();
}

class _AuthenticateFormState extends State<AuthenticateForm> {
  TextEditingController txtContoller;

  void stravaAuthenticate() {
    print("Authenticated!");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(''),
          Text('Authentication'),
          Text('with Strava'),
          ElevatedButton(
            key: Key('AuthenticationButton'),
            child: Text('Authenticate'),
            onPressed: stravaAuthenticate,
          ),
        ],
      ),
    );
  }
}
