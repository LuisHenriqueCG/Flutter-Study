import 'package:flutter/material.dart';

Center widgetText() {
  return Center(
    child: Text(
      'Hello',
      style: TextStyle(
          fontSize: 40.0,
          color: Colors.amber,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red),
    ),
  );
}
