import 'package:flutter/material.dart';

import '../colors.dart';

ButtonStyle borderedButtonStyle = ButtonStyle(
    elevation: MaterialStateProperty.all(0),
    backgroundColor: MaterialStateProperty.all(Colors.white),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      side: BorderSide(color: Colorses.secondary),
      borderRadius: BorderRadius.circular(10),
    )));

