import 'package:flutter/material.dart';
import 'package:inventory_smells/routes/router.dart';
import 'package:inventory_smells/routes/routes.dart';
import 'package:inventory_smells/widgets/buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: generateRoute,
      initialRoute: homeRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Inventory Management System',
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: size.height * 0.2,
            ),
            Button(
              text: 'Login',
              routeName: loginRoute,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Button(
              text: 'Sign Up',
              routeName: signupRoute,
            ),
          ],
        ),
      ),
    );
  }
}
