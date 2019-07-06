import 'package:flutter/material.dart';
import 'package:oneframe/screens/feed/chart_screen.dart';
import 'package:oneframe/screens/feed/detail_screen.dart';
import 'package:oneframe/screens/feed/feed_screen.dart';
import 'package:oneframe/screens/image_zoom_view.dart';
import 'package:oneframe/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Segment Demo',
      routes: {
        // When we navigate ImageZoomView the "/" route, build the FirstScreen Widget
        '/': (context) => ImageZoomView(),
        '/chart' : (context) => ChartScreen(),
        // When we navigate to the "/second" route, build the SecondScreen Widget
        '/second': (context) => Material(
          child: FeedDetailScreen(),
        ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
