import 'package:flutter/material.dart';
import 'package:flutter_loan/page/demo_page.dart';
import 'package:flutter_loan/page/login_page.dart';

class NavigatorUtils {
  static toLogin(BuildContext context) {
    return Navigator.pushNamed(context, LoginPage.sName);
  }

  static toDemo1(BuildContext context, {Object arguments}) {
    return Navigator.pushNamed(context, DemoPage.sName, arguments: arguments);
  }
}
