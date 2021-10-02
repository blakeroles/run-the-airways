import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:strava_flutter/strava.dart';
import 'package:run_the_airways/secret.dart';
import 'package:run_the_airways/constants.dart';

// This has been adapted from an example in https://github.com/dreampowder/strava_flutter/blob/master/example/lib/main.dart
// using the strava_flutter package

class AuthenticateForm extends StatefulWidget {
  @override
  _AuthenticateFormState createState() => _AuthenticateFormState();
}

class _AuthenticateFormState extends State<AuthenticateForm> {
  void stravaAuthenticate() {
    authenticate(secret);
  }

  void authenticate(String secret) async {
    bool isAuthOk = false;

    final strava = Strava(true, secret);
    final prompt = "auto";

    isAuthOk = await strava.oauth(clientId, scope, secret, prompt);

    if (isAuthOk) {
      print("Auth OK!");
    }
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
          )
        ],
      ),
    );
  }
}
