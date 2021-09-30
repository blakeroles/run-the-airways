import 'package:flutter/material.dart';
import 'package:run_the_airways/theme.dart';
import 'package:run_the_airways/screens/authenticate_screen/authenticate_screen.dart';
import 'package:run_the_airways/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Run the Airways',
      theme: theme(),
      initialRoute: AuthenticateScreen.routeName,
      routes: routes,
    );
  }
}
