import 'package:flutter/material.dart';
import '../info/index.dart';
import '../../../widgets/search_bar/search_bar.dart';

class TabInfo extends StatefulWidget {
  const TabInfo({Key key}) : super(key: key);

  @override
  _TabInfoState createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          onSearch: () {
            Navigator.of(context).pushNamed('search');
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
          ),
          Info(),
          Info(),
          Info(),
        ],
      ),
    );
  }
}
