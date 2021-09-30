import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// This has been adapted from an example in https://github.com/dreampowder/strava_flutter/blob/master/example/lib/main.dart
// using the strava_flutter package

class AuthenticateForm extends StatefulWidget {
  @override
  _AuthenticateFormState createState() => _AuthenticateFormState();
}

class _AuthenticateFormState extends State<AuthenticateForm> {
  final TextEditingController _textEditingController = TextEditingController();
  final DateFormat datFormatter = DateFormat("HH:mm:ss");

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
