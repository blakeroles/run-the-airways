import 'package:flutter/material.dart';
import 'package:run_the_airways/secret.dart';
import 'package:run_the_airways/constants.dart';

class AuthenticateForm extends StatefulWidget {
  @override
  _AuthenticateFormState createState() => _AuthenticateFormState();
}

class _AuthenticateFormState extends State<AuthenticateForm> {
  void stravaAuthenticate() {
    authenticate(secret);
  }

  void authenticate(String secret) async {}

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
          )
        ],
      ),
    );
  }
}
