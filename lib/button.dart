library checka_ui_kit;

import 'package:flutter/material.dart';

import '../constants.dart';

const Color? _defaultNullColor = null;

class StyledElevatedButton extends ElevatedButton {
  StyledElevatedButton(
      {child: Widget, onPressed: Function, color = _defaultNullColor})
      : assert(color == null || color is Color),
        super(
            child: child,
            onPressed: onPressed,
            style: ButtonStyle(
                backgroundColor:
                    color != null ? MaterialStateProperty.all(color) : null,
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(DEFAULT_BORDER_RADIUS),
                  ),
                )));
}
