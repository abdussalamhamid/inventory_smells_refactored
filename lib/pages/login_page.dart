import 'package:flutter/material.dart';
import 'package:inventory_smells/routes/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/bg.jpg'), fit: BoxFit.cover),
          ),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    'lib/assets/user.png',
                    fit: BoxFit.contain,
                  ),
                ),

                SizedBox(height: size.height * 0.01),

                // Email Field
                Container(
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        )),
                    validator: (val) => val.isEmpty ? 'Enter Email' : null,
                    onChanged: (val) {
                      setState(() => email = val);
                    },
                  ),
                ),

                SizedBox(height: size.height * 0.01),

                // Password Field
                Container(
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0))),
                    validator: (val) => val.isEmpty ? 'Enter password' : null,
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                  ),
                ),

                SizedBox(height: size.height * 0.01),

                // Login Button
                Container(
                  width: size.width * 0.5,
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xff01A0C7),
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          mainMenuRoute,
                        );
                      },
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
