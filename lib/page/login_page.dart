import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_loan/common/utils/widget_utils.dart';

class LoginPage extends StatefulWidget {
  static final String sName = '/account/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _phoneController = new TextEditingController();
  final _codeController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return pageWidget(
      context: context,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: new Text('登录'),
        ),
        body: new Padding(
          padding: EdgeInsets.all(20.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                  labelText: '手机号',
                  hintText: '请输入手机号',
                ),
                controller: _phoneController,
                inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],//只允许输入数字
              ),
              new TextField(
                decoration: new InputDecoration(
                  labelText: '验证码',
                  hintText: '请输入验证码',
                ),
                controller: _codeController,
                inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],//只允许输入数字
              ),
              new Padding(padding: EdgeInsets.all(30)),
              new RaisedButton(
                onPressed: onLogin,
                child: new Text('登录'),
                color: Theme.of(context).primaryColor,
                textColor: Theme.of(context).buttonColor,
              )
            ],
          ),
        ),
      ),
    );
  }

  void onLogin() {
    var msg  = '';
    if(_phoneController.text.isEmpty){
      msg = '请输入手机号';
    }else if(_codeController.text.isEmpty){
      msg = '请输入验证码';
    } else{
      msg = "手机号:${_phoneController.text}\n 验证码: ${_codeController.text}";
    }
    showToast(msg);
  }
}
