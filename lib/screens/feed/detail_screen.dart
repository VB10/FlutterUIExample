import 'package:flutter/material.dart';

class FeedDetailScreen extends StatelessWidget {
  const FeedDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Hero(
            tag: 'heros0',
            child: Material(color: Colors.transparent, child: Text("a"))),
      ),
      body: Container(
        child: Material(
          color: Colors.transparent,
          child: Center(
            child: Text("a123123"),
          ),
        ),
      ),
    );
  }
}
