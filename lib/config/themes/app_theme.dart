import 'package:flutter/material.dart';

final appTheme = ThemeData(
  textTheme: TextTheme(bodyText1: TextStyle(), bodyText2: TextStyle())
      .apply(bodyColor: Colors.white, displayColor: Colors.white),
  iconTheme: IconThemeData(color: Colors.white),
  scaffoldBackgroundColor: Colors.grey[900],
);
