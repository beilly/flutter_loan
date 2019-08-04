import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

pageWidget({BuildContext context, Widget child}) => GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: child,
    );

showToast(String msg) {
  if (null != msg && msg.isNotEmpty) {
    Fluttertoast.showToast(msg: msg, gravity: ToastGravity.CENTER);
  }
}
