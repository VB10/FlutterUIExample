import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:oneframe/shared/views/window.dart';
import 'package:oneframe/widgets/card/list_card.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<String> _datas;
  ScrollController _controller;
  double screenWidth;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //Example
    _datas = new List<String>();
    for (var i = 0; i < 15; i++) {
      _datas.add(i.toString());
    }
  }

  final String _title = "Settings";

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          backgroundColor: Colors.green,
          expandedHeight: 200.0,
          flexibleSpace: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              print('constraints=' + constraints.toString());
              return FlexibleSpaceBar(
                  centerTitle: true,
                  title: AnimatedOpacity(
                      duration: Duration(milliseconds: 300),
                      //opacity: top == 80.0 ? 1.0 : 0.0,
                      opacity: 1.0,
                      child: constraints.maxHeight ==
                              WindowHelper.BAR_HEIGHT(context)
                          ? Text(this._title)
                          : Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.only(left: WindowHelper.SLIVER_LEFT_PADDING),
                              child: Text(this._title))),
                  background: Image.network(
                    "https://images.unsplash.com/photo-1542601098-3adb3baeb1ec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5bb9a9747954cdd6eabe54e3688a407e&auto=format&fit=crop&w=500&q=60",
                    fit: BoxFit.cover,
                  ));
            },
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 200.0,
          delegate: SliverChildListDelegate(
            [
              Container(color: Colors.red),
              Container(color: Colors.purple),
              Container(color: Colors.green),
              Container(color: Colors.orange),
              Container(color: Colors.yellow),
              Container(color: Colors.pink),
            ],
          ),
        ),
      ],
    );
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
          BuildContext context, double shrinkOffset, bool overlapsContent) =>
      Container(color: Colors.yellow);

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 30;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
