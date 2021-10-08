import 'package:flutter/material.dart';
import 'package:run_the_airways/screens/overview_screen/components/body.dart';
import 'package:run_the_airways/size_config.dart';
import 'package:run_the_airways/models/athlete.dart';

class OverviewScreen extends StatelessWidget {
  static String routeName = "/overview_screen";
  final Athlete athlete;

  OverviewScreen({Key key, @required this.athlete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
          width: double.infinity,
          child: Column(children: <Widget>[
            SizedBox(height: getProportionateScreenHeight(30)),
            Row(
              children: <Widget>[
                SizedBox(width: getProportionateScreenWidth(16)),
                Text("Welcome " + athlete.getFirstName(),
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(24),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: getProportionateScreenWidth(18)),
                Text(
                    athlete.getCity() +
                        " " +
                        athlete.getState() +
                        " " +
                        athlete.getCountry(),
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(14),
                      color: Colors.black,
                    )),
              ],
            ),
            Body(),
          ])),
    ));
  }
}
