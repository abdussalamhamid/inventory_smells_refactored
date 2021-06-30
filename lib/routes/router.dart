import 'package:flutter/material.dart';
import 'package:inventory_smells/main.dart';
import 'package:inventory_smells/pages/main_menu.dart';
import 'package:inventory_smells/routes/routes.dart';
import 'package:inventory_smells/pages/login_page.dart';
import 'package:inventory_smells/pages/signup_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeRoute:
      return MaterialPageRoute(builder: (context) => MyHomePage());
    case loginRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case signupRoute:
      return MaterialPageRoute(builder: (context) => SignupPage());
    case mainMenuRoute:
      return MaterialPageRoute(builder: (context) => MainMenu());
    default:
      return MaterialPageRoute(builder: (context) => MyHomePage());
  }
}
