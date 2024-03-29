// 1. 新建文件 /pages/home/index.dart
// 2. 添加 material, page_content依赖
import 'package:flutter/material.dart';

// 3. 编写状态组件
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册'),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(30),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '确认密码',
                hintText: '请输入密码',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            RaisedButton(
              color: Colors.green,
              child: Text(
                '注册',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                //todo
              },
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('已有账号，'),
                FlatButton(
                  child: Text(
                    '去登陆～',
                    style: TextStyle(color: Colors.green),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'login');
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
// 4. 使用 PageContent
