import 'package:flutter/material.dart';
import 'package:hello_world/Classes/pages/home/tab_search/dataList.dart';
import 'package:hello_world/Classes/widgets/common_floating_action_button.dart';
import 'package:hello_world/Classes/widgets/room_list_item_widget.dart';
//

class RoomManagePage extends StatelessWidget {
  const RoomManagePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CommonFloatingActionButton('发布房源', () {
          Navigator.of(context).pushNamed('roomAdd');
        }),
        appBar: AppBar(
          title: Text('房屋管理'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: '空置',
              ),
              Tab(
                text: '已租',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children:
                  dataList.map((item) => RoomListItemWidget(item)).toList(),
            ),
            ListView(
              children:
                  dataList.map((item) => RoomListItemWidget(item)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
