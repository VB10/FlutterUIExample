import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'screens/login/login_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Segment Demo',
      theme: ThemeData.light().copyWith(
        textTheme: TextTheme(
          display1: TextStyle(fontSize: 35,color: Colors.white)
        )
      ),
      home: LoginView(),
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
