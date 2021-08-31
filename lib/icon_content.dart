import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  // const GenderPicker({
  //   Key key,
  // }) : super(key: key);

  IconContent({@required this.label, @required this.icon});

  final String label;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      icon,
      SizedBox(
        height: 15.0,
      ),
      Text(label, style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)))
    ]);
  }
}
