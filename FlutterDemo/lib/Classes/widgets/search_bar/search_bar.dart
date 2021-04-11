import 'package:flutter/material.dart';
//import 'package:hook_up_rent/widgets/common_image.dart';

class SearchBar extends StatefulWidget {
  final bool showLoaction; //展示位置按钮
  final Function goBackCallback; //回退按钮函数
  final String inputValue; // 搜索框输入值
  final String defaultInputValue; // 搜索框默认值
  final Function onCancel; //取消按钮
  final bool showMap; //展示地图按钮
  final Function onSearch; //用户点击搜索框触发
  final ValueChanged<String> onSearchSubmit;

  const SearchBar(
      {Key key,
      this.showLoaction,
      this.goBackCallback,
      this.inputValue,
      this.defaultInputValue,
      this.onCancel,
      this.showMap,
      this.onSearch,
      this.onSearchSubmit})
      : super(key: key); // 用户输入搜索词后，点击键盘的搜索键触发

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          if (widget.showLoaction != null || true)
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    Icon(Icons.room, color: Colors.green, size: 16.0),
                    Text(
                      '北京',
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
          if (widget.goBackCallback != null || true)
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: widget.goBackCallback,
                child: Icon(Icons.chevron_left, color: Colors.black87),
              ),
            ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 10.0),
              child: TextField(
                decoration: InputDecoration(hintText: '请输入搜索词'),
              ),
            ),
          ),
          if (widget.onCancel != null || true)
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: widget.onCancel,
                child: Text(
                  '取消',
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                ),
              ),
            ),
          if (widget.showMap != null || true)
            Image.asset('static/icons/widget_search_bar_map.png'),
        ],
      ),
    );
  }
}
