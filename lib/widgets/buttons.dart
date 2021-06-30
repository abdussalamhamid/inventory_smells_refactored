import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({this.text, this.routeName});
  final String text;
  final String routeName;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
    return Container(
      width: size.width * 0.5,
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              routeName,
            );
          },
          child: Text(text,
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
