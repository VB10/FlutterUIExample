import 'package:flutter/material.dart';

InputDecoration decoration(String text) {
  return InputDecoration(
      labelText: text,
      enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
      focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent)));
}
