import 'package:flutter/material.dart';
import 'package:hello_world/Classes/widgets/search_bar/search_bar.dart';
import '../../../widgets/common_swiper.dart';
import '../../home/info/index.dart';
import './index_navigator.dart';
import './index_recommond.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          CommonSwiper(),
          IndexNavigator(),
          IndexRecommond(),
          Info(
            showTitle: true,
          ),
          Text('这里是内容区域'),
        ],
      ),
    );
  }
}
