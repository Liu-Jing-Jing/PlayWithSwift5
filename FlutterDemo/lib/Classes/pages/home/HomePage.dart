// 1. 新建文件 /pages/home/index.dart
// 2. 添加 material, page_content依赖
import 'package:flutter/material.dart';
import 'package:hello_world/Classes/pages/home/system_setting/index.dart';
import 'package:hello_world/Classes/pages/home/tab_profile/index.dart';
import '../../widgets/page_content.dart';
import './tab_info/tab_info.dart';
import '../home/tab_index/tab_index.dart';
import '../home/tab_search/tab_search.dart';

// 1. 需要准备 4 个 tab 内容区（tabView）
List<Widget> tabViewList = [
  SystemPage(),
  TabIndex(),
  TabSearch(),
  TabInfo(),
  TabProfile(),
];
// 2. 需要准备 4 个 BottomNavigationBarItem

List<BottomNavigationBarItem> barItemList = [
  BottomNavigationBarItem(title: Text('Sys'), icon: Icon(Icons.home)),
  BottomNavigationBarItem(title: Text('首页'), icon: Icon(Icons.home)),
  BottomNavigationBarItem(title: Text('搜索'), icon: Icon(Icons.search)),
  BottomNavigationBarItem(title: Text('资讯'), icon: Icon(Icons.info)),
  BottomNavigationBarItem(title: Text('我的'), icon: Icon(Icons.account_circle)),
];

// 3. 编写状态组件
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
