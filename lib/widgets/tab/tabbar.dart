import 'package:flutter/material.dart';

class TabbarWidget extends StatelessWidget {
  TabbarWidget({Key key, @required this.body, @required this.header})
      : super(key: key);

  List<Widget> body;
  List<Widget> header;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: this.header.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: AppBar(
            flexibleSpace:
                Image.asset("assets/images/background.jpg", fit: BoxFit.fill),
            bottom: TabBar(
              tabs: this.header,
            ),
          ),
        ),
        body: TabBarView(
          children: this.body,
        ),
      ),
    );
  }
}
