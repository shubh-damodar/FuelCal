import 'package:flutter/material.dart';

customInputs(String hint, String suffix) {
  return InputDecoration(
    border: InputBorder.none,
    hintText: "$hint",
    hintStyle: TextStyle(
      color: Color(0xFFBABABA),
    ),
    suffixText: "$suffix",
    contentPadding: EdgeInsets.only(top: 22, bottom: 22, right: 10),
  );
}

TextStyle bold20 = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

EdgeInsets l10r10t15 = EdgeInsets.only(left: 10, right: 10, top: 15);

EdgeInsets l10 = EdgeInsets.only(left: 10);
