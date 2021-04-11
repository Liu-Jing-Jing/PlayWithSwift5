import 'package:flutter/material.dart';
import 'package:hello_world/Classes/utils/simple_toast.dart';
import 'package:hello_world/Classes/widgets/common_swiper.dart';
import 'package:hello_world/Classes/utils/dio_http.dart';

import 'dart:convert';

/// 快捷键的测试代码
class HelloTest extends StatelessWidget {
  final String name;

  const HelloTest({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SystemPage extends StatefulWidget {
  final String name;

  const SystemPage({Key key, this.name}) : super(key: key);

  @override
  _SystemPageState createState() => _SystemPageState();
}

class _SystemPageState extends State<SystemPage> {
  /// 焦点控制
  FocusNode _commentFocus = FocusNode();
  FocusNode _passwordFocus = FocusNode();
  bool showPassword = false;
  _registerHandler() async {
    var username = '123456';
    var password = '123456';

    const url = '/au/login';
    var params = {"username": username, "password": password};

    var res = await DioHttp.of(context).post(url, params);
    var resString = json.decode(res.toString());

    int status = resString['status'];
    String description = resString['description'] ?? '内部错误';
    print(resString);
    if (status.toString().startsWith('2')) {
      Navigator.of(context).pushReplacementNamed('login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '小桔子🍊',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        /// 添加系统的安全区
        /// minimum: EdgeInsets.all(8),
        child: ListView(
          children: [
            CommonSwiper(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Hello World'),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: TextField(
                    obscureText: !showPassword,
                    //focusNode: _commentFocus,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: '请输入内容',
                      suffixIcon: IconButton(
                          icon: showPassword
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () {
                            /// TO DO
                            Toast.show(context, '点击右侧小图标');
                            setState(() {
                              showPassword = !showPassword;
                            });
                          }),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: TextField(
                    obscureText: !showPassword,
                    focusNode: _passwordFocus,
                    decoration: InputDecoration(
                      labelText: 'Text',
                      hintText: '请输入内容',
                      suffixIcon: IconButton(
                          icon: showPassword
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () {
                            /// TO DO
                            Toast.show(context, '点击右侧小图标');
                            setState(() {
                              showPassword = !showPassword;
                            });
                          }),
                    ),
                  ),
                ),
                RaisedButton(
                  child: Text('退出键盘'),
                  onPressed: () async {
                    _commentFocus.unfocus();
                    _passwordFocus.unfocus();
                    Toast.show(context, "键盘成功退出");

                    /// 发送网络请求的代码
                    _registerHandler();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('还没有账号'),
                    FlatButton(
                      child: Text(
                        '去注册～',
                        style: TextStyle(color: Colors.green),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'register');
                      },
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
