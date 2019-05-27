import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:oneframe/shared/views/window.dart';

import 'detail_screen.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<String> _datas;
  double screenWidth;
  @override
  void initState() {
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
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_photo_alternate),
        onPressed: () => {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 230,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.music_note),
                            title: Text('Music'),
                            onTap: () => null,
                          ),
                          ListTile(
                            leading: Icon(Icons.photo_album),
                            title: Text('Photos'),
                            onTap: () => null,
                          ),
                          ListTile(
                            leading: Icon(Icons.videocam),
                            title: Text('Video'),
                            onTap: () => null,
                          ),
                        ],
                      ),
                    );
                  })
            },
      ),
      body: CustomScrollView(
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
                                padding: EdgeInsets.only(
                                    left: WindowHelper.SLIVER_LEFT_PADDING),
                                child: Text(this._title))),
                    background: Image.network(
                      "https://images.unsplash.com/photo-1542601098-3adb3baeb1ec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5bb9a9747954cdd6eabe54e3688a407e&auto=format&fit=crop&w=500&q=60",
                      fit: BoxFit.cover,
                    ));
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 200.0,
                    child: Hero(
                      transitionOnUserGestures: false,
                      tag: "heros${index}",
                      child: Card(
                        child: FlatButton(
                            onPressed: () {
                              print(index);
                              Navigator.pushNamed(context, "/second");
                            },
                            child: Text('data')),
                      ),
                    ),
                  );
                },
              ),
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
      ),
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
