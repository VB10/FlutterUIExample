import 'package:flutter/material.dart';

class WindowHelper {
  static AppBar _appBar = AppBar(
    title: Text('App bar height'),
  );
  static double BAR_HEIGHT(BuildContext context) {
    final _appBarHeight =
        MediaQuery.of(context).padding.top + _appBar.preferredSize.height;
    return _appBarHeight;
  }

  static const double SLIVER_LEFT_PADDING = 76;
}
