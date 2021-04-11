import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/Classes/pages/home/setting.dart';
import 'package:hello_world/Classes/pages/room_add/room_add.dart';
import 'package:hello_world/Classes/pages/room_manage/room_manage.dart';
import '../Classes/pages/home/HomePage.dart';
import './pages/NotFound/NotFoundPage.dart';
import './pages/login.dart';
import './pages/Room/RoomDetailPage.dart';
import '../Classes/pages/register.dart';

class Routes {
//   1. 定义路由名称
  static String home = '/';
  static String login = '/login';
  static String register = '/register';
  // static String roomDetail = '/room/:roomId';
  static String roomDetail = '/roomDetail/:roomId';
  static String setting = '/setting';
  static String roomManage = '/roomManage';
  static String roomAdd = '/roomAdd';

// 2. 定义路由处理函数
  static Handler _homeHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return HomePage();
  });
  static Handler _loginHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return LoginPage();
  });
  static Handler _registerHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RegisterPage();
  });

  static Handler _notFoundHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return NotFoundPage();
  });

  static Handler _roomDetailHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RoomDetailPage(
      roomId: params['roomId'][0],
    );
  });

  static Handler _settingHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return SettingPage();
  });

  static Handler _roomManageHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RoomManagePage();
  });
  static Handler _roomAddHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RoomAddPage();
  });

// 3. 编写函数 configureRoutes 关联路由名称和处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(register, handler: _registerHandler);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.define(setting, handler: _settingHandler);
    router.define(roomManage, handler: _roomManageHandler);
    router.define(roomAdd, handler: _roomAddHandler);
    router.notFoundHandler = _notFoundHandler;
  }
}
