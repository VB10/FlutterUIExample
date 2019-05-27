import 'package:flutter/material.dart';

class ListCardWidget extends StatelessWidget {
  const ListCardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.leak_add),
            title: Text("okey"),
          )
        ],
      ),
    );
  }
}
