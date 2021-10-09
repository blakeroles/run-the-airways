import 'package:flutter/material.dart';
import 'package:run_the_airways/components/custom_suffix_item.dart';
import 'package:run_the_airways/size_config.dart';
import 'package:run_the_airways/constants.dart';

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

  final List<String> errors = [];

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
            buildCountryFormField()
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
