import 'package:flutter/material.dart';

class FormEntry extends StatefulWidget {
  const FormEntry({this.hintText, this.ifEmptyText});
  final String hintText;
  final String ifEmptyText;

  @override
  _FormEntryState createState() => _FormEntryState();
}

class _FormEntryState extends State<FormEntry> {
  String field = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.0),
        color: Colors.white,
      ),
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: widget.hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
            )),
        validator: (val) => val.isEmpty ? widget.ifEmptyText : null,
        onChanged: (val) {
          setState(() => field = val);
        },
      ),
    );
  }
}
