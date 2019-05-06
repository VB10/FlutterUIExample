import 'package:flutter/material.dart';
import 'package:oneframe/widgets/tab/header_tab.dart';

class SegmentPageWidgets extends StatefulWidget {
  SegmentPageWidgets(
      {Key key,
      @required this.children,
      @required this.headerChildren,
      @required this.controller})
      : super(key: key);

  final PageController controller;
  final List<Widget> children;
  final List<HeaderTabWidget> headerChildren;

  @override
  _SegmentPageWidgetsState createState() => _SegmentPageWidgetsState();
}

class _SegmentPageWidgetsState extends State<SegmentPageWidgets> {
  int _currentIndex = 1;

  Widget headers() {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < widget.children.length; i++) {
      list.add(Expanded(
        child: FlatButton(
          child: widget.headerChildren[i],
          textColor: Colors.white,
          color: i == _currentIndex ? Colors.red : Colors.transparent,
          onPressed: () {
            this.widget.controller.animateToPage(i,
                duration: Duration(milliseconds: 300), curve: Curves.easeIn);
            onPageChange(i);
          },
        ),
      ));
    }
    return Stack(
      children: <Widget>[
        Image.asset("assets/images/background.jpg", fit: BoxFit.fitHeight),
        Positioned.fill(
            left: 0,
            bottom: 0,
            child: Align(
                alignment: Alignment.bottomCenter, child: Row(children: list))),
      ],
    );
  }

  void onPageChange(int val) {
    setState(() {
      _currentIndex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        headers(),
        Expanded(
          child: PageView(
              onPageChanged: (val) => this.onPageChange(val),
              controller: this.widget.controller,
              children: this.widget.children),
        )
      ],
    );
  }
}
