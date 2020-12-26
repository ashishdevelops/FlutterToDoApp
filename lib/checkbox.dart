import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CheckBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border(
          top: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
          bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
          left: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
          right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
        ),
      ),
      margin: EdgeInsets.symmetric( vertical: 1.0),
    );
  }
}