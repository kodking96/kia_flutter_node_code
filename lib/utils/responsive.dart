import 'package:flutter/material.dart';

const double mobileSize = 480.0;
const double tabSize = 720.0;
const double webSize = 1300.0;

const EdgeInsets screenPaddingWeb =
    EdgeInsets.symmetric(vertical: 70, horizontal: 20);
const EdgeInsets screenPaddingTab =
    EdgeInsets.symmetric(vertical: 40, horizontal: 20);
const EdgeInsets screenPaddingMobile = EdgeInsets.all(20);

class Responsive {
  static Widget? getResponsiveWidget(BuildContext context,
      {Widget? mobile, Widget? web, Widget? tab}) {
    if (isTab(context) && tab != null) {
      return tab;
    } else if (isWeb(context) && web != null) {
      return web;
    }
    return mobile;
  }

  static EdgeInsets getScreenPadding(BuildContext context) {
    if (isTab(context)) {
      return screenPaddingTab;
    } else if (isWeb(context)) {
      return screenPaddingWeb;
    } else {
      return screenPaddingMobile;
    }
  }

  static bool isMobile(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return screenSize.width >= mobileSize && screenSize.width < tabSize;
  }

  static bool isTab(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return screenSize.width >= tabSize && screenSize.width < webSize;
  }

  static bool isWeb(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return screenSize.width >= webSize;
  }
}
