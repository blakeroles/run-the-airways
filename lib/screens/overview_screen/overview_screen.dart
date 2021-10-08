import 'package:flutter/material.dart';
import 'package:run_the_airways/screens/overview_screen/components/body.dart';
import 'package:run_the_airways/size_config.dart';

class OverviewScreen extends StatelessWidget {
  static String routeName = "/overview_screen";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
