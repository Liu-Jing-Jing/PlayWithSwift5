import 'package:flutter/material.dart';
import 'package:hello_world/Classes/widgets/room_list_item_widget.dart';
import 'package:hello_world/Classes/widgets/search_bar/search_bar.dart';
import 'dataList.dart';
import 'filter_bar/index.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({Key key}) : super(key: key);

  @override
  _TabSearchState createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: SearchBar(
          showLoaction: true,
          showMap: true,
          onSearch: () {
            Navigator.of(context).pushNamed('search');
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 41.0,
            child: FilterBar(
              onChange: (data) {},
            ),
          ),
          Expanded(
            child: ListView(
              children:
                  dataList.map((item) => RoomListItemWidget(item)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
