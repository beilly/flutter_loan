import 'package:flutter/material.dart';

import 'page/demo_page.dart';
import 'page/login_page.dart';

var routes = <String, WidgetBuilder>{
  DemoPage.sName: (BuildContext context) => new DemoPage(title: 'page1'),
  LoginPage.sName: (BuildContext context) => new LoginPage(),
};
