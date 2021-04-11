import 'package:flutter/material.dart';
import 'package:hello_world/Classes/utils/common_toast.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              CommonToast.showToast(context, '已经退出登陆');
            },
            child: Text(
              '退出登陆',
              style: TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
