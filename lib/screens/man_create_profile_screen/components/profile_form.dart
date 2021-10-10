import 'package:flutter/material.dart';
import 'package:run_the_airways/components/custom_suffix_item.dart';
import 'package:run_the_airways/size_config.dart';
import 'package:run_the_airways/constants.dart';
import 'package:run_the_airways/components/form_error.dart';
import 'package:run_the_airways/components/default_button.dart';
import 'package:run_the_airways/models/athlete.dart';
import 'package:run_the_airways/screens/overview_screen/overview_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();

  final firstNameFormFieldController = TextEditingController();
  final cityFormFieldController = TextEditingController();
  final stateFormFieldController = TextEditingController();
  final countryFormFieldController = TextEditingController();

  String firstNameField;
  String cityField;
  String stateField;
  String countryField;

  bool metersChecked = true;
  bool feetChecked = false;
  bool isAthleteStored = false;

  final List<String> errors = [];

  @override
  void initState() {
    super.initState();
    checkIfAthleteStored();
  }

  void checkIfAthleteStored() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      if (prefs.getString('athlete_stored') == "yes") {
        isAthleteStored = true;
      }
    });
  }

  void saveAthlete(Athlete athlete) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('athlete_stored', 'yes');
    prefs.setString('athlete_name', athlete.getFirstName());
    prefs.setString('athlete_image_url', athlete.getImageUrl());
    prefs.setString('athlete_city', athlete.getCity());
    prefs.setString('athlete_state', athlete.getState());
    prefs.setString('athlete_country', athlete.getCountry());
    prefs.setString('athlete_measurement_pref', athlete.getMeasurementPref());
    prefs.setDouble('athlete_all_time_kms', athlete.getRunAllTimeKms());
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildFirstNameFormField(),
            SizedBox(height: getProportionateScreenHeight(15)),
            buildCityFormField(),
            SizedBox(height: getProportionateScreenHeight(15)),
            buildStateFormField(),
            SizedBox(height: getProportionateScreenHeight(15)),
            buildCountryFormField(),
            SizedBox(height: getProportionateScreenHeight(15)),
            Row(children: <Widget>[
              Text("Preferred unit of measurement",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(14.0))),
            ]),
            SizedBox(height: getProportionateScreenHeight(15)),
            Row(children: [
              SizedBox(width: getProportionateScreenWidth(30)),
              Checkbox(
                  value: metersChecked,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      if (value) {
                        metersChecked = value;
                        feetChecked = !value;
                      }
                    });
                  }),
              Text("Meters"),
              SizedBox(width: getProportionateScreenWidth(100)),
              Checkbox(
                value: feetChecked,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    if (value) {
                      feetChecked = value;
                      metersChecked = !value;
                    }
                  });
                },
              ),
              Text(
                "Feet",
              )
            ]),
            SizedBox(height: getProportionateScreenHeight(15)),
            FormError(errors: errors),
            DefaultButton(
                text: "Submit",
                press: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    String measurementPref;
                    if (metersChecked) {
                      measurementPref = "meters";
                    } else {
                      measurementPref = "feet";
                    }
                    Athlete newAthlete = Athlete(
                        firstNameField,
                        "http://fakeUrl",
                        cityField,
                        stateField,
                        countryField,
                        measurementPref,
                        0.0);
                    saveAthlete(newAthlete);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              OverviewScreen(athlete: newAthlete),
                        ));
                  }
                }),
          ],
        ));
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      controller: firstNameFormFieldController,
      keyboardType: TextInputType.text,
      onSaved: (newValue) => firstNameField = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kFirstNameNullError)) {
          setState(() {
            errors.remove(kFirstNameNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kFirstNameNullError)) {
          setState(() {
            errors.add(kFirstNameNullError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "First Name",
          hintText: "Enter your first name",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/User Icon.svg",
            iconSize: 18,
          )),
    );
  }

  TextFormField buildCityFormField() {
    return TextFormField(
      controller: cityFormFieldController,
      keyboardType: TextInputType.text,
      onSaved: (newValue) => cityField = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kCityNullError)) {
          setState(() {
            errors.remove(kCityNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kCityNullError)) {
          setState(() {
            errors.add(kCityNullError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "City",
          hintText: "Enter your city",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Location point.svg",
            iconSize: 18,
          )),
    );
  }

  TextFormField buildStateFormField() {
    return TextFormField(
      controller: stateFormFieldController,
      keyboardType: TextInputType.text,
      onSaved: (newValue) => stateField = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kStateNullError)) {
          setState(() {
            errors.remove(kStateNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kStateNullError)) {
          setState(() {
            errors.add(kStateNullError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "State",
          hintText: "Enter your state",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Location point.svg",
            iconSize: 18,
          )),
    );
  }

  TextFormField buildCountryFormField() {
    return TextFormField(
      controller: countryFormFieldController,
      keyboardType: TextInputType.text,
      onSaved: (newValue) => countryField = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kCountryNullError)) {
          setState(() {
            errors.remove(kCountryNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kCountryNullError)) {
          setState(() {
            errors.add(kCountryNullError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Country",
          hintText: "Enter your country",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Location point.svg",
            iconSize: 18,
          )),
    );
  }
}
