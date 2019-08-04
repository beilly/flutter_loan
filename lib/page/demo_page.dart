import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_loan/common/bean/user.dart';
import 'package:flutter_loan/common/utils/widget_utils.dart';
import 'package:flutter_loan/widget/demo_item.dart';

class DemoPage extends StatefulWidget {
  static final sName = '/demo/demo1';

  final String title;

  DemoPage({Key key, @required this.title}) : super(key: key);

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {

  Future<bool> _dialogExitPage(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) =>
      new AlertDialog(
        content: new Text('确认推出吗？'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.pop(context, false),
            child: new Text('取消'),
          ),
          new FlatButton(
            onPressed: () => Navigator.pop(context, true),
            child: new Text('确认'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String _msg = ModalRoute
        .of(context)
        .settings
        .arguments;
    var map = json.decode(_msg);
    var person = User.fromJson(map);

    print("argumentsm: $person");
    showToast(person.dateOfBirth.toString());

    return WillPopScope(
      onWillPop: () {
        return _dialogExitPage(context);
      },
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new ListView.builder(
          itemBuilder: (context, index) {
            return new DemoItem();
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
