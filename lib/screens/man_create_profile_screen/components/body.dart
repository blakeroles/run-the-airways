import 'package:flutter/material.dart';
import 'package:run_the_airways/size_config.dart';
import 'package:run_the_airways/screens/man_create_profile_screen/components/profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(children: [
            SizedBox(height: getProportionateScreenHeight(30)),
            Row(children: <Widget>[
              Text("Create your athlete profile",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(24.0),
                    fontWeight: FontWeight.bold,
                  )),
            ]),
            SizedBox(height: getProportionateScreenHeight(30)),
            ProfileForm(),
          ]),
        ),
      ),
    );
  }
}
