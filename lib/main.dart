import 'package:flutter/material.dart';
import 'package:oneframe/screens/feed/chart_screen.dart';
import 'package:oneframe/screens/feed/detail_screen.dart';
import 'package:oneframe/screens/feed/feed_screen.dart';
import 'package:oneframe/screens/image_zoom_view.dart';
import 'package:oneframe/screens/login.dart';
import 'package:oneframe/screens/rounded/custom_view.dart';
import 'package:video_player/video_player.dart';

import 'screens/video/video_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Segment Demo',
      routes: {
        // When we navigate ImageZoomView the "/" route, build the FirstScreen Widget
        '/': (context) => CustomView1(),
        '/chart': (context) => ChartScreen(),
        // When we navigate to the "/second" route, build the SecondScreen Widget
        '/second': (context) => Material(
              child: FeedDetailScreen(),
            ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  VideoPlayerController _controller;
  bool _data = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://youtu.be/7IG5kRFIMZw')
      ..initialize()..play();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Center(
          child:VideoPlayer(_controller)
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
