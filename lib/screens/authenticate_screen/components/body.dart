import 'package:flutter/material.dart';
import 'package:run_the_airways/size_config.dart';
import 'package:run_the_airways/screens/authenticate_screen/components/authenticate_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text("Run the Airways",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28.0),
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              AuthenticateForm(),
            ]),
          ),
        ),
      ),
    );
  }
}
