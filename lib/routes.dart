import 'package:flutter/widgets.dart';
import 'package:run_the_airways/screens/authenticate_screen/authenticate_screen.dart';
import 'package:run_the_airways/screens/overview_screen/overview_screen.dart';
import 'package:run_the_airways/screens/man_create_profile_screen/man_create_profile_screen.dart';

final Map<String, WidgetBuilder> routes = {
  AuthenticateScreen.routeName: (context) => AuthenticateScreen(),
  OverviewScreen.routeName: (context) => OverviewScreen(
        athlete: null,
      ),
  ManCreateProfileScreen.routeName: (context) => ManCreateProfileScreen(),
};
