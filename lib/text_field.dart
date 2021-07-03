import 'package:flutter/material.dart';
import '../constants.dart';

class BorderedTextField extends TextField {
  BorderedTextField(
      {String? text,
      bool isPassword = false,
      required ThemeData themeData,
      TextEditingController? controller})
      : super(
            controller: controller,
            obscureText: isPassword,
            autocorrect: !isPassword,
            decoration: borderedInputDecoration(text, themeData));
}

InputDecoration borderedInputDecoration(String? text, ThemeData themeData) {
  return InputDecoration(
    hintText: text,
    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
    // filled: true,
    // isDense: true,
    contentPadding: EdgeInsets.only(left: 2.0, right: 2.0),
    fillColor: Colors.white70,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(DEFAULT_BORDER_RADIUS)),
      borderSide: BorderSide(
        color: themeData.accentColor,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(DEFAULT_BORDER_RADIUS)),
      borderSide: BorderSide(color: themeData.accentColor, width: 3.0),
    ),
  );
}
