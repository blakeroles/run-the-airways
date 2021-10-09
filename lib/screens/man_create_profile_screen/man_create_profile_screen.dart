import 'package:flutter/material.dart';
import 'package:run_the_airways/size_config.dart';
import 'package:run_the_airways/screens/man_create_profile_screen/components/body.dart';

class ManCreateProfileScreen extends StatelessWidget {
  static String routeName = "/man_create_profile_screen";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
