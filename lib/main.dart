import 'package:flutter/material.dart';
import 'package:oneframe/screens/feed/feed_screen.dart';
import 'package:oneframe/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Segment Demo',
      debugShowCheckedModeBanner: false,
      home: Material(child: FeedPage()),
    );
  }
}
// CustomScrollView(
//     slivers: <Widget>[
//       SliverAppBar(
//         title: Text('SliverAppBar'),
//         backgroundColor: Colors.green,
//         expandedHeight: 200.0,
//         flexibleSpace: FlexibleSpaceBar(
//           background: Image.asset('assets/forest.jpg', fit: BoxFit.cover),
//         ),
//       ),
//       SliverFixedExtentList(
//         itemExtent: 150.0,
//         delegate: SliverChildListDelegate(
//           [
//             Container(color: Colors.red),
//             Container(color: Colors.purple),
//             Container(color: Colors.green),
//             Container(color: Colors.orange),
//             Container(color: Colors.yellow),
//             Container(color: Colors.pink),
//           ],
//         ),
//       ),
//     ],
// );