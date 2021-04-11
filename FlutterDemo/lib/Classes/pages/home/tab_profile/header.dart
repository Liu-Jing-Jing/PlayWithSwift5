import 'package:flutter/material.dart';

var loginRegisterStyle = TextStyle(fontSize: 20.0, color: Colors.white);

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  Widget _notLoginBuilder(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 20.0, bottom: 20.0),
      decoration: BoxDecoration(color: Colors.green),
      height: 95.0,
      child: Row(
        children: <Widget>[
          Container(
            height: 65.0,
            width: 65.0,
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/4006126?v=4"),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 6.0),
              ),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('login');
                    },
                    child: Text(
                      '登陆',
                      style: loginRegisterStyle,
                    ),
                  ),
                  Text(
                    '/',
                    style: loginRegisterStyle,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('register');
                    },
                    child: Text(
                      '注册',
                      style: loginRegisterStyle,
                    ),
                  ),
                ],
              ),
              Text(
                '登陆后可以体验更多',
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _loginBuilder(BuildContext context) {
    String userName = '已登陆用户名';
    String userImage =
        "https://tva1.sinaimg.cn/large/006y8mN6ly1g6tbnovh8jj30hr0hrq3l.jpg";
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 20.0, bottom: 20.0),
      decoration: BoxDecoration(color: Colors.green),
      height: 95.0,
      child: Row(
        children: <Widget>[
          Container(
            height: 65.0,
            width: 65.0,
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(userImage),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 6.0),
              ),
              Text(
                userName,
                style: loginRegisterStyle,
              ),
              Text(
                '查看编辑个人资料',
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var isLogin = true;
    return isLogin ? _loginBuilder(context) : _notLoginBuilder(context);
  }
}
