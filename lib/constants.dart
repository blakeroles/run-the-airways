import 'dart:io';

import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFBB0707);
const kTextColor = Color(0xFF757575);

final authorizationEndpoint = 'https://www.strava.com/oauth/authorize';
final tokenEndpoint = 'https://www.strava.com/oauth/token';
final redirectUrl = 'http://localhost';
