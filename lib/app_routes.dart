import 'package:flutter/material.dart';
import 'package:flutter_loan/page/demo_page.dart';

var routes = <String, WidgetBuilder>{
  DemoPage.sName: (BuildContext context) => new DemoPage(title: 'page1'),
};
