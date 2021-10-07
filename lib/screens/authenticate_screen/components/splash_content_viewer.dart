import 'package:flutter/material.dart';
import 'package:run_the_airways/size_config.dart';
import 'package:run_the_airways/constants.dart';

class SplashContentViewer extends StatelessWidget {
  const SplashContentViewer({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Spacer(),
      Text(
        text,
        textAlign: TextAlign.center,
      ),
      Spacer(flex: 1),
      Image.asset(
        image,
        height: getProportionateScreenHeight(265),
        width: getProportionateScreenWidth(235),
      )
    ]);
  }
}
