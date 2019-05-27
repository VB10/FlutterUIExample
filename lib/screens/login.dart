import 'package:flutter/material.dart';
import 'package:oneframe/shared/widgets/tab/header_tab.dart';
import 'package:oneframe/shared/widgets/tab/tabbar.dart';


import 'home/main.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  PageController controller;
  List<HeaderTabWidget> headerTabWidget;
  List<Widget> children;

  @override
  void initState() {
    super.initState();
    controller = new PageController();
    headerTabWidget = new List<HeaderTabWidget>();
    children = new List<Widget>();

    headerTabWidget.add(HeaderTabWidget(
      color: Colors.transparent,
      title: "Home",
    ));
    headerTabWidget.add(HeaderTabWidget(
      color: Colors.transparent,
      title: "Home2",
    ));
    children.add(HomeScreen());
    children.add(Container(color: Colors.blue));
  }

  @override
  Widget build(BuildContext context) {
    return TabbarWidget(
      header: this.headerTabWidget,
      body: this.children,
    );
  }
}
