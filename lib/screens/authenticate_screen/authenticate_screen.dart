import 'package:flutter/material.dart';
import 'package:run_the_airways/screens/authenticate_screen/components/body.dart';
import 'package:run_the_airways/size_config.dart';

class AuthenticateScreen extends StatelessWidget {
  static String routeName = "/authenticate_screen";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
