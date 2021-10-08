import 'package:flutter/material.dart';
import 'package:run_the_airways/constants.dart';
import 'package:run_the_airways/screens/authenticate_screen/components/splash_content_viewer.dart';
import 'package:run_the_airways/size_config.dart';
import 'package:run_the_airways/screens/overview_screen/overview_screen.dart';
import 'package:run_the_airways/models/athlete.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "First splash screen info",
      "image": "assets/images/placeholder_1.png"
    },
    {
      "text": "Second splash screen info",
      "image": "assets/images/placeholder_2.png"
    },
    {
      "text": "Third splash screen info",
      "image": "assets/images/placeholder_3.png"
    },
  ];

  void authAndNavToOverviewScreen() {
    Athlete authAthlete = authenticateWithStrava();

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OverviewScreen(athlete: authAthlete),
        ));
  }

  Athlete authenticateWithStrava() {
    return Athlete("Blake", "http://fakeUrl", "Sydney", "NSW", "Australia",
        "meters", 1600.0, 3500.0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: Column(children: <Widget>[
              Spacer(),
              Text("Run the Airways",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(36),
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              Expanded(
                  flex: 3,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContentViewer(
                      image: splashData[index]["image"],
                      text: splashData[index]["text"],
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                  ),
                  child: Column(children: <Widget>[
                    Spacer(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => buildDot(index: index),
                        )),
                    Spacer(flex: 3),
                    ElevatedButton(
                      key: Key('AuthenticationButton'),
                      child: Text('Authenticate with Strava'),
                      onPressed: authAndNavToOverviewScreen,
                    ),
                    Spacer(),
                  ]),
                ),
              )
            ])));
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
        duration: kAnimationDuration,
        margin: EdgeInsets.only(right: 5),
        height: 6,
        width: currentPage == index ? 20 : 6,
        decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3),
        ));
  }
}
