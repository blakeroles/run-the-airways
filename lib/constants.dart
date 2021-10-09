import 'package:flutter/material.dart';

const kAnimationDuration = Duration(microseconds: 200);

const kPrimaryColor = Color(0xFFBB0707);
const kTextColor = Color(0xFF757575);

final authorizationEndpoint = 'https://www.strava.com/oauth/authorize';
final tokenEndpoint = 'https://www.strava.com/oauth/token';
final redirectUrl = 'http://localhost';

// Form errors
const String kFirstNameNullError = "Please enter your first name";
const String kCityNullError = "Please enter your city";
const String kStateNullError = "Please enter your state";
const String kCountryNullError = "Please enter you country";
